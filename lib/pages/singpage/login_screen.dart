import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:planealo_app/providers/provider_login.dart';
import 'package:planealo_app/routes/route.dart';
import 'package:planealo_app/services/index.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text('   COMIENZA TU\nNUEVA AVENTURA',
              style: GoogleFonts.piedra(
                color: Colors.purple[200],
                fontWeight: FontWeight.bold,
                letterSpacing: 7,
                fontSize: 20,
              )),
        ),
        body: GestureDetector(
          onTap: () {
            final FocusScopeNode focus = FocusScope.of(context);
            if (!focus.hasPrimaryFocus && focus.hasFocus) {
              FocusManager.instance.primaryFocus!.unfocus();
            }
          },
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: Lottie.asset('assets/travel.json'),
                  ),
                  ChangeNotifierProvider(
                    create: (context) => ProviderLogin(),
                    child: _LoginForm(),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, MyRoutes.rREGISTER);
                          },
                          child: const Text(
                            'Registrate',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          ),
                        ),
                        const SizedBox(
                          width: 80,
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
                  )
                ],
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
                  hintText: 'example@example.com',
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
                      : 'El correo NO es valido';
                },
              ),
              const SizedBox(
                height: 30,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'INICIO DE SESIÓN',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        disabledColor: Colors.black54,
                        elevation: 1,
                        color: Colors.black54,
                        onPressed: loginProvider.isLoading
                            ? null
                            : () async {
                                FocusScope.of(context).unfocus();

                                final authService = Provider.of<AuthService>(
                                    context,
                                    listen: false);

                                if (!loginProvider.isValidForm()) return;

                                loginProvider.isLoading = true;

                                final String? errorMessage =
                                    await authService.login(loginProvider.email,
                                        loginProvider.password);

                                if (errorMessage == null) {
                                  MsgAuth.verSnackbar('Bienvenido!');
                                  // ignore: use_build_context_synchronously
                                  Navigator.pushReplacementNamed(
                                      context, MyRoutes.rHOME);
                                } else {
                                  MsgAuth.verSnackbar(
                                      'Correo y/o contraseña invalido!');
                                  loginProvider.isLoading = false;
                                }
                              },
                        child: (loginProvider.isLoading)
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              )),
                  ),
                ],
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
      borderSide: const BorderSide(width: 2, color: Colors.blue),
      borderRadius: BorderRadius.circular(15),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 2, color: Colors.amber),
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
