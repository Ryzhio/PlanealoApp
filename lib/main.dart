import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:sqflite_flutter/pages/welcomepage/bienvenida_page.dart';
import 'package:sqflite_flutter/pages/producto/lugar_page.dart';
import 'package:sqflite_flutter/providers/login_provider.dart';
import 'package:sqflite_flutter/providers/off_sesion.dart';
import 'package:sqflite_flutter/providers/producto_provider.dart';
import 'package:sqflite_flutter/providers/storage_provider.dart';
import 'package:sqflite_flutter/routes/route.dart';
import 'package:sqflite_flutter/services/index.dart';
import 'package:sqflite_flutter/services/lugar_service.dart';
import 'package:sqflite_flutter/share_prefences/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(const ProviderStateWidget());
}

class ProviderStateWidget extends StatelessWidget {
  const ProviderStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LauncherProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => LugaresService(),
        ),
        ChangeNotifierProvider(
          create: (_) => AuthService(),
        ),
        ChangeNotifierProvider(
          create: (_) => StorageImageProvider(),
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
        onGenerateRoute: MyRoutes.generateRoute,
        initialRoute: 'bienvenida_page',
        routes: {
          'bienvenida_page': (_) => const BienvenidaPage(),
          'lugar_page': (_) => const LugarPage(),
        },
      ),
    );
  }
}
