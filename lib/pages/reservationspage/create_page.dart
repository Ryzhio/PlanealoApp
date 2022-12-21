import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sqflite_flutter/providers/producto_provider.dart';

final nombreController = TextEditingController();
final categoriaController = TextEditingController();
final precioCController = TextEditingController();
final precioVController = TextEditingController();
final stockController = TextEditingController();
final phoneController = TextEditingController();

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final productoProvider = Provider.of<ProductoProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reserva YA!!',
          style: GoogleFonts.playfairDisplay(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              controller: nombreController,
              hintText: 'Nombres y Apellidos',
              keyboardType: TextInputType.name,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              controller: categoriaController,
              hintText: 'Lugar a Visitar',
              keyboardType: TextInputType.name,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              controller: precioCController,
              hintText: 'N° de Dias de Tour',
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              controller: precioVController,
              hintText: 'Presupuesto',
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              controller: stockController,
              hintText: 'N° de Personas',
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              minWidth: 150,
              height: 50,
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () {
                productoProvider.insertProducto(
                    nombreController.text,
                    categoriaController.text,
                    precioCController.text,
                    precioVController.text,
                    stockController.text,
                    phoneController.text);

                nombreController.clear();
                categoriaController.clear();
                precioCController.clear();
                precioVController.clear();
                stockController.clear();
                phoneController.clear();
              },
              child: Text(
                'Reservar',
                style: GoogleFonts.playfairDisplay(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? hintText;

  const CustomTextFormField(
      {super.key, this.controller, this.keyboardType, this.hintText});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              width: 2, color: Color.fromARGB(255, 251, 96, 0)),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.red),
          borderRadius: BorderRadius.circular(5),
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 244, 165, 105),
        contentPadding: const EdgeInsets.all(15),
      ),
    );
  }
}
