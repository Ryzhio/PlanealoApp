import 'package:flutter/material.dart';
import 'package:sqflite_flutter/pages/index.dart';

class MyRoutes {
  static const String rHOME = '/inicio';
  static const String rLOGIN = '/login';
  static const String rREGISTER = '/register';
  static const String rVerify = '/verify';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ('/inicio'):
        return MaterialPageRoute(builder: (_) => const MenuPrimaryPage());
      case ('/login'):
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case ('/register'):
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case ('/verify'):
        return MaterialPageRoute(builder: (_) => const VerifyAuthScreen());

      default:
        return MaterialPageRoute(builder: (_) => const MenuPrimaryPage());
    }
  }
}
