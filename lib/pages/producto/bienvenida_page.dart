import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sqflite_flutter/pages/menu_primary_page.dart';

class BienvenidaPage extends StatelessWidget {
  const BienvenidaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/cz.jpg'),
          fit: BoxFit.cover,
          opacity: 0.6,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 29,
                    backgroundColor: Colors.transparent,
                    child: Image.asset(
                      'assets/paa.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'lanéalo',
                    style: GoogleFonts.allison(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ],
              ),
              const SizedBox(height: 80),
              Text(
                'Conoce tu PRÓXIMO lugar de VIAJE',
                style: GoogleFonts.playfairDisplay(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 49,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              MaterialButton(
                minWidth: 180,
                height: 65,
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MenuPrimaryPage(),
                    ),
                  );
                },
                child: Text(
                  'EMPEZAR',
                  style: GoogleFonts.playfairDisplay(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
