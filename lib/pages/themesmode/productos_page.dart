import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:planealo_app/pages/producto/update_page.dart';
import 'package:planealo_app/providers/producto_provider.dart';

class ProductosPage extends StatelessWidget {
  const ProductosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productoData = Provider.of<ProductoProvider>(context);
    productoData.queryAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mis Reservaciones',
          style: GoogleFonts.playfairDisplay(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            letterSpacing: 1,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              productoData.deleteAll();
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: productoData.product.length,
        itemBuilder: (BuildContext context, int index) {
          final data = productoData.product[index];

          return ListTile(
            title: Text(
                '${data.nombre} | ${data.categoria} | Personas ${data.stock} '),
            subtitle: Text(
                'N° de días a Hospedarse ${data.precioc} | S/. ${data.preciov} '),
            trailing: IconButton(
              onPressed: () {
                productoData.delete(data.id);
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UpdatePage(
                    product: data,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
