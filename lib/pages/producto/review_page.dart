import 'package:sqflite_flutter/models/lugar_model.dart';
import 'package:sqflite_flutter/services/lugar_service.dart';
import 'package:sqflite_flutter/widgets/card_widget.dart';
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
        title: const Text('Lugares'),
        centerTitle: true,
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
            title: Text(dato.nombre),
            subtitle: Text(dato.descripcion),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          lugarService.seleccionarLugar = Lugar(descripcion: '', nombre: '');
          Navigator.pushNamed(context, 'lugar_page');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
