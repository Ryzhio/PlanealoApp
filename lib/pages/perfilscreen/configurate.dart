// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sqflite_flutter/models/users.dart';
import 'package:sqflite_flutter/widgets/textformfield_widget.dart';

class ConfigPage extends StatefulWidget {
  final User user;
  const ConfigPage({super.key, required this.user});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Editar Perfil'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                  ],
                ),
                Stack(children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 3)),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(widget.user.perfilA),
                      radius: 60,
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
                              onPressed: () {},
                              icon: Icon(
                                Icons.photo,
                                color: Colors.white,
                              ))))
                ]),
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
                      height: 10,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 64,
                        child: CustomTextFormField(
                          hintText: 'iamalejara',
                          initialValue: 'iamalejara',
                          onChanged: (value) => value,
                        ))
                  ],
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
                      height: 10,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 64,
                        child: CustomTextFormField(
                          hintText: 'Ingrese su nombre',
                          initialValue: 'Alexandra',
                          onChanged: (value) => value,
                        ))
                  ],
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
                      height: 10,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 64,
                        child: CustomTextFormField(
                          hintText: 'Ingrese su correo',
                          initialValue: '',
                          onChanged: (value) => value,
                        ))
                  ],
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
                      height: 10,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 64,
                        child: CustomTextFormField(
                          hintText: 'Ingrese su contraseña',
                          initialValue: 'iamalej',
                          onChanged: (value) => value,
                        ))
                  ],
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
                      height: 10,
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 64,
                        child: CustomTextFormField(
                          hintText: 'Ingrese su número',
                          initialValue: '929121669',
                          onChanged: (value) => value,
                        ))
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                MaterialButton(
                  onPressed: () {},
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
                      borderRadius: BorderRadius.circular(15)),
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
