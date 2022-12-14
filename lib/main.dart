import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sqflite_flutter/pages/producto/bienvenida_page.dart';
import 'package:sqflite_flutter/providers/producto_provider.dart';
import 'package:sqflite_flutter/providers/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ProductoProvider())],
      child: MaterialApp(
        themeMode: ThemeMode.system,
        darkTheme: MyThemes.darkTheme,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: MyThemes.lightTheme,
        // ThemeData(
        //   useMaterial3: true,
        //   primarySwatch: Colors.blue,
        // ),
        initialRoute: 'menupage',
        routes: {
          'menupage': (_) => const BienvenidaPage(),
        },
      ),
    );
  }
}
