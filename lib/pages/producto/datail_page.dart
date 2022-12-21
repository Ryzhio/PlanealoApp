import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sqflite_flutter/pages/menu_second_page.dart';
import 'package:sqflite_flutter/pages/menu_primary_page.dart';
import 'package:sqflite_flutter/pages/producto/review_page.dart';
import 'package:sqflite_flutter/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 350),
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 115),
                      height: 600,
                      width: double.infinity,
                      color: Colors.cyan,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Descripción:',
                            style: GoogleFonts.playfairDisplay(
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              letterSpacing: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Ica es una ciudad del centro sur del Perú, capital del departamento de Ica, situada en el estrecho valle que forma el río Ica, entre el Gran Tablazo de Ica y las laderas occidentales de la cordillera de los Andes.',
                            style: GoogleFonts.playfairDisplay(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          MaterialButton(
                            minWidth: 180,
                            height: 65,
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ReviewPage(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/cms.png',
                                  scale: 7,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Comentarios',
                                  style: GoogleFonts.playfairDisplay(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Icon(
                                  Ionicons.arrow_forward_circle_outline,
                                  color: Colors.black,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 100),
                      padding: const EdgeInsets.only(
                          left: 30, bottom: 30, right: 36),
                      height: 500,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ica, Perú',
                            style: GoogleFonts.playfairDisplay(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    child: Center(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Ionicons.star,
                                          color: Colors.amber,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 7),
                                    child: Text(
                                      '4.92',
                                      style: GoogleFonts.playfairDisplay(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    child: Center(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Ionicons.partly_sunny,
                                          color: Colors.amber,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 7),
                                    child: Text(
                                      '27°C',
                                      style: GoogleFonts.playfairDisplay(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    child: Center(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Ionicons.calendar,
                                          color: Colors.amber,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 7),
                                    child: Text(
                                      '9 Jun',
                                      style: GoogleFonts.playfairDisplay(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 430,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40)),
                          image: DecorationImage(
                              image: AssetImage('assets/city6.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SafeArea(
            child: Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              // color: mainCOlor,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Ionicons.arrow_back,
                  size: 40,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              height: 80,
              width: double.infinity,
              color: Colors.tealAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Empezando desde',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1,
                            color: Colors.black),
                      ),
                      Text(
                        '500 - 750',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                        color: mainCOlor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: MaterialButton(
                        minWidth: 180,
                        height: 65,
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MenuSecondPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Reservar Ahora',
                          style: GoogleFonts.playfairDisplay(
                            color: Colors.black,
                            fontSize: 13.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
