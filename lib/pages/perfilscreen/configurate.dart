// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:planealo_app/models/users.dart';
import 'package:planealo_app/providers/storage_provider.dart';

class ConfigPage extends StatefulWidget {
  final User user;
  const ConfigPage({super.key, required this.user});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    final storageProvider = Provider.of<StorageImageProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Perfil'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              storageProvider.activeCleanImage();
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.blue, width: 3)),
                      child: InkWell(
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: Colors.amber,
                          ),
                          child: (storageProvider.image != null)
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(80),
                                  child: SizedBox.fromSize(
                                    size: const Size.fromRadius(80),
                                    child: Image.file(
                                      storageProvider.image!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              : const Icon(
                                  Icons.photo,
                                  size: 100,
                                ),
                        ),
                        onTap: () {
                          storageProvider.activeGalleryImage();
                        },
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: IconButton(
                          onPressed: () {
                            storageProvider.activeCamaraImage();
                          },
                          icon: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Usuario',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 55,
                      child: Material(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 217, 217, 217),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: '      ejem:  Aljara',
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // child: CustomTextFormField(
                      //   hintText: 'iamalejara',
                      //   initialValue: 'iamalejara',
                      //   onChanged: (value) => value,
                      // ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nombres',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 55,
                      child: Material(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 217, 217, 217),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: '      ejem: Alexandra',
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // child: CustomTextFormField(
                      //   hintText: 'iamalejara',
                      //   initialValue: 'iamalejara',
                      //   onChanged: (value) => value,
                      // ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Correo electronico',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 55,
                      child: Material(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 217, 217, 217),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: '      example@example.com',
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // child: CustomTextFormField(
                      //   hintText: 'iamalejara',
                      //   initialValue: 'iamalejara',
                      //   onChanged: (value) => value,
                      // ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contraseña',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 55,
                      child: Material(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 217, 217, 217),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: '      ****************',
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // child: CustomTextFormField(
                      //   hintText: 'iamalejara',
                      //   initialValue: 'iamalejara',
                      //   onChanged: (value) => value,
                      // ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Número',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 55,
                      child: Material(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 217, 217, 217),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: '      949567345',
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // child: CustomTextFormField(
                      //   hintText: 'iamalejara',
                      //   initialValue: 'iamalejara',
                      //   onChanged: (value) => value,
                      // ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                MaterialButton(
                  onPressed: () {
                    storageProvider.alertCustom(context);
                  },
                  color: Colors.blue,
                  minWidth: 200,
                  height: 60,
                  child: Text(
                    'Guardar',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
