import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:http/http.dart' as http;

class StorageImageProvider extends ChangeNotifier {
  File? image;
  String? nameImage;

  //BD
  String urlbase = 'https://xzwzzcmkqxuvkckqlxaw.supabase.co/rest/v1/producto';
  String keydb =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh6d3p6Y21rcXh1dmtja3FseGF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzEwMjYwOTEsImV4cCI6MTk4NjYwMjA5MX0.NvsnCAUhW1KP2fWU4DYBSNWpS9JTdYqfcJ9RG4Urp9Q';
  String autorization =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh6d3p6Y21rcXh1dmtja3FseGF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzEwMjYwOTEsImV4cCI6MTk4NjYwMjA5MX0.NvsnCAUhW1KP2fWU4DYBSNWpS9JTdYqfcJ9RG4Urp9Q';

  //SUPABASE STORAGE
  final SupabaseClient client = SupabaseClient(
      'https://xzwzzcmkqxuvkckqlxaw.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh6d3p6Y21rcXh1dmtja3FseGF3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzEwMjYwOTEsImV4cCI6MTk4NjYwMjA5MX0.NvsnCAUhW1KP2fWU4DYBSNWpS9JTdYqfcJ9RG4Urp9Q');

  //=======================================================
  //API

  Future<String> guardarDB(BuildContext context) async {
    final url = Uri.parse(urlbase);
    final String msg;

    Map<String, String> header = {
      'apikey': keydb,
      'Authorization': autorization,
      'Content-Type': 'application/json',
      'Prefer': 'return=minimal',
    };

    final body = jsonEncode({
      "nombre": "Grupo1",
      "descripcion": "Prueba Demo",
      "categoria_id": 2,
      "image": nameImage
    });

    final response = await http.post(url, body: body, headers: header);

    if (response.statusCode != 201) {
      print('MSG => NO SE GUARDO CORRECTAMENTE');
      msg = 'NO SE GUARDO CORRECTAMENTE';
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Icon(
            Icons.check,
            color: Colors.amber,
            size: 100,
          ),
          content: Text(
            msg,
            textAlign: TextAlign.center,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop('False');
                activeCleanImage();
              },
              child: const Text('Cancelar'),
            ),
          ],
        ),
      );
    } else {
      print('MSG=> SE GUARDO CORRECTAMENTE');
      msg = 'SE GUARDO CORRECTAMENTE';
      subirImageStorage();
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Icon(
            Icons.check,
            color: Colors.amber,
            size: 100,
          ),
          content: Text(
            msg,
            textAlign: TextAlign.center,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop('True');
                activeCleanImage();
              },
              child: const Text('Aceptar'),
            ),
          ],
        ),
      );
    }
    return msg;
  }

  //=======================================================

  void alertCustom(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Icon(
          Icons.notification_important,
          color: Colors.amber,
          size: 100,
        ),
        content: const Text(
          '¿Seguro de Guardar?',
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop('False'),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop('True'),
            child: const Text('Aceptar'),
          ),
        ],
      ),
    ).then((value) => {
          if (value == 'True')
            {
              guardarDB(context),
            }
        });
  }

  //=======================================================

  //SUBIR LA IMAGEN A STORAGE
  Future subirImageStorage() async {
    final file = File(image!.path);

    final ruta0 = '/data/user/0/com.example.sesion_12/cache/$nameImage';
    final ruta1 = image!.path.replaceAll(
      'data/user/0/com.example.sesion_12/cache',
      'IMG',
    );

    final ruta2 = image!.path.replaceAll(
      'data/user/0/com.example.sesion_12/app_flutter',
      'IMG',
    );

    final newPath = (image!.path == ruta0) ? ruta1 : ruta2;
    // print('PATH=>${image!.path}');

    final response = await client.storage.from('grupo1').upload(newPath, file);

    print(response);
    notifyListeners();
  }

  //CAMARA
  Future activeCamaraImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;
    final imageTemp = File(image.path);

    //EL NOMBRE DEL ARCHIVO
    nameImage = image.name;
    this.image = imageTemp;

    notifyListeners();
  }

  //GALERIA
  Future activeGalleryImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final imageTemp = File(image.path);
    nameImage = image.name;
    this.image = imageTemp;
    notifyListeners();
  }

  Future activeCleanImage() async {
    image = null;
    notifyListeners();
  }
}
