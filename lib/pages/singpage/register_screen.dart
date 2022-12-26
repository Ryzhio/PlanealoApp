import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:planealo_app/providers/provider_login.dart';
import 'package:planealo_app/routes/route.dart';
import 'package:planealo_app/services/service_auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/register.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTap: () {
            final FocusScopeNode focus = FocusScope.of(context);
            if (!focus.hasPrimaryFocus && focus.hasFocus) {
              FocusManager.instance.primaryFocus!.unfocus();
            }
          },
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: const [
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, MyRoutes.rLOGIN);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'REGISTRATE\n   VIAJERO',
                          style: GoogleFonts.piedra(
                            fontWeight: FontWeight.bold,
                            color: Colors.amber[200],
                            letterSpacing: 8,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 300,
                      child: Lottie.network(
                          'https://assets8.lottiefiles.com/packages/lf20_mdbdc5l7.json'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ChangeNotifierProvider(
                      create: (context) => ProviderLogin(),
                      child: _LoginForm(),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Navigator.pushReplacementNamed(
                            //     context, MyRoutes.rLOGIN);
                          },
                          child: const Text(
                            'Ayuda',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigator.pushReplacementNamed(
                            //     context, MyRoutes.rREGISTER);
                          },
                          child: const Text(
                            '¿Olvistate tu Contraseña?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatefulWidget {
  @override
  State<_LoginForm> createState() => __LoginFormState();
}

class __LoginFormState extends State<_LoginForm> {
  bool _ispassword = true;

  void _viewPassword() {
    setState(() {
      _ispassword = !_ispassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<ProviderLogin>(context);
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: loginProvider.formkey,
          child: Column(
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.black),
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: _buildDecoration(
                  hintText: 'example@examples.com',
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Colors.amber,
                  ),
                ),
                onChanged: (value) => loginProvider.email = value,
                validator: (value) {
                  String caracteres =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

                  RegExp regExp = RegExp(caracteres);

                  return regExp.hasMatch(value ?? '')
                      ? null
                      : 'No es un correo NO valido';
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: const TextStyle(color: Colors.black),
                autocorrect: false,
                obscureText: _ispassword,
                keyboardType: TextInputType.text,
                decoration: _buildDecoration(
                  hintText: '********',
                  prefixIcon: const Icon(
                    Icons.key_outlined,
                    color: Colors.amber,
                  ),
                  suffixIcon: InkWell(
                    onTap: _viewPassword,
                    child: Icon(
                        _ispassword ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
                onChanged: (value) => loginProvider.password = value,
                validator: (value) {
                  return (value != null && value.length >= 8)
                      ? null
                      : 'Debe tener minimo 8 caracteres';
                },
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                width: 150,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  disabledColor: Colors.amber,
                  elevation: 1,
                  color: Colors.amber,
                  onPressed: loginProvider.isLoading
                      ? null
                      : () async {
                          FocusScope.of(context).unfocus();

                          final authService =
                              Provider.of<AuthService>(context, listen: false);

                          if (!loginProvider.isValidForm()) return;

                          loginProvider.isLoading = true;

                          final String? errorMessage =
                              await authService.createUser(
                                  loginProvider.email, loginProvider.password);

                          if (errorMessage == null) {
                            // ignore: use_build_context_synchronously
                            Navigator.pushReplacementNamed(
                                context, MyRoutes.rHOME);
                          } else {
                            loginProvider.isLoading = false;
                          }
                        },
                  child: (loginProvider.isLoading)
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
                          'REGISTRAR',
                          style: TextStyle(color: Colors.white),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

InputDecoration _buildDecoration({
  final String? hintText,
  final Widget? prefixIcon,
  final Widget? suffixIcon,
}) {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 2, color: Colors.amber),
      borderRadius: BorderRadius.circular(15),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 2, color: Colors.purple),
      borderRadius: BorderRadius.circular(15),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 2, color: Colors.amber),
      borderRadius: BorderRadius.circular(15),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(width: 2, color: Colors.amber),
      borderRadius: BorderRadius.circular(15),
    ),
    filled: true,
    fillColor: Colors.white,
    hintText: hintText,
    hintStyle: const TextStyle(color: Colors.grey),
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    contentPadding: const EdgeInsets.all(18),
  );
}
