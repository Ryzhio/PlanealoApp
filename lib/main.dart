import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:sqflite_flutter/pages/producto/bienvenida_page.dart';
import 'package:sqflite_flutter/pages/producto/lugar_page.dart';
import 'package:sqflite_flutter/providers/producto_provider.dart';
import 'package:sqflite_flutter/services/lugar_service.dart';

void main() {
  runApp(const ProviderStateWidget());
}

class ProviderStateWidget extends StatelessWidget {
  const ProviderStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LugaresService(),
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ProductoProvider())],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PlanéaloApp',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.orange,
        ),
        initialRoute: 'menu_page',
        routes: {
          'menu_page': (_) => const BienvenidaPage(),
          'lugar_page': (_) => const LugarPage(),
        },
      ),
    );
  }
}
