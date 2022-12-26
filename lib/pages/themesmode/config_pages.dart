import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/providers/theme_provider.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  final temaController = Get.put(TemaProvider());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ajustes',
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 23,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    MaterialButton(
                      minWidth: 120,
                      height: 50,
                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      onPressed: () => temaController.temaClaro(),
                      child: Row(
                        children: [
                          Text(
                            "Modo claro",
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          const Icon(
                            Ionicons.sunny_sharp,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    MaterialButton(
                      minWidth: 120,
                      height: 50,
                      color: Colors.black38,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      onPressed: () => temaController.temaOscuro(),
                      child: Row(
                        children: [
                          Text(
                            "Modo oscuro",
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(
                            Ionicons.moon,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
