import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:planealo_app/models/lugar_model.dart';
import 'package:planealo_app/services/lugar_service.dart';
import 'package:planealo_app/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lugarService = Provider.of<LugaresService>(context);

    if (lugarService.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'COMENTARIOS',
          style: GoogleFonts.playfairDisplay(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: lugarService.lugares.length,
        itemBuilder: (BuildContext context, int index) {
          final dato = lugarService.lugares[index];
          return CardCustom(
            onTap: () {
              lugarService.seleccionarLugar =
                  lugarService.lugares[index].copyWith();

              Navigator.pushNamed(context, 'lugar_page');
            },
            title: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  dato.nombre,
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/p2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
              child: Text(
                dato.descripcion,
                style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            trailing: IconButton(
                onPressed: () {
                  lugarService.borrarLugar(dato);
                },
                icon: Icon(
                  Ionicons.trash,
                  color: Colors.indigo,
                  size: 30,
                )),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          lugarService.seleccionarLugar = Lugar(descripcion: '', nombre: '');
          Navigator.pushNamed(context, 'lugar_page');
        },
        child: const Icon(Ionicons.add),
      ),
    );
  }
}
