import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:planealo_app/models/users.dart';
import 'package:planealo_app/pages/perfilscreen/configurate.dart';
import 'package:planealo_app/pages/themesmode/config_pages.dart';
import 'package:planealo_app/providers/off_sesion.dart';

class ProfileCard extends StatelessWidget {
  final User user;
  const ProfileCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final launcherProvider = Provider.of<LauncherProvider>(context);
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.6,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Row(
                    children: [
                      Text(
                        'Mi Perfil',
                        style: GoogleFonts.josefinSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      IconButton(
                          onPressed: () => launcherProvider.activeMenu(),
                          icon: const Icon(Icons.menu))
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage(user.perfilA),
                ),
                Text.rich(
                  TextSpan(
                    text: user.perfilN,
                    style: GoogleFonts.josefinSans(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: '\naleja.ja@gmail.com',
                        style: GoogleFonts.josefinSans(
                          fontSize: 20,
                          color: Colors.black38,
                        ),
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: const [
                //     Indicators(
                //       number: '250',
                //       text: 'Reviews',
                //     ),
                //     Indicators(
                //       number: '100k',
                //       text: 'Followers',
                //     ),
                //     Indicators(
                //       number: '30',
                //       text: 'Following',
                //     ),
                //   ],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      minWidth: 160,
                      height: 56,
                      color: const Color(0xff4245ff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConfigPage(
                              user: userd.first,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Editar Perfil',
                        style: GoogleFonts.playfairDisplay(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 160,
                      height: 56,
                      color: const Color(0xff4245ff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InicioPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Ajustes',
                        style: GoogleFonts.playfairDisplay(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    // CustomElevatedButton(
                    //   text: 'Ajustes',

                    //   primary: Color(0xff4245ff),
                    // ),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Visibility(
            visible: launcherProvider.isVisible,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:
                      const Color.fromARGB(255, 141, 194, 143).withOpacity(0.3),
                ),
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          // launchcherProvider.goMapLauncher();
                        },
                        backgroundColor: Colors.red,
                        child: const Icon(
                          Icons.power_settings_new,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          // launchcherProvider.goEmailLauncher();
                        },
                        backgroundColor: Colors.green,
                        child: const Icon(
                          Icons.email,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          // launchcherProvider.goBrowserLauncher();
                        },
                        backgroundColor: Colors.amber,
                        child: const Icon(
                          Icons.play_arrow,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          // launchcherProvider.goPhoneLauncher();
                        },
                        backgroundColor: Colors.red,
                        child: const Icon(
                          Icons.phone,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          // launchcherProvider.goWhatsappLauncher();
                        },
                        backgroundColor: Colors.pink,
                        child: const Icon(
                          Icons.whatsapp_outlined,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
