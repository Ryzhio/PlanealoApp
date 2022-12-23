import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sqflite_flutter/models/users.dart';
import 'package:sqflite_flutter/pages/perfilscreen/configurate.dart';
import 'package:sqflite_flutter/pages/themesmode/config_pages.dart';
import 'package:sqflite_flutter/widgets/custom_elevated_button.dart';
import 'indicators.dart';

class ProfileCard extends StatefulWidget {
  final User user;
  const ProfileCard({Key? key, required this.user}) : super(key: key);

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.6,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Mi Perfil',
              style: GoogleFonts.josefinSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(widget.user.perfilA),
            ),
            Text.rich(
              TextSpan(
                text: widget.user.perfilN,
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
    );
  }
}
