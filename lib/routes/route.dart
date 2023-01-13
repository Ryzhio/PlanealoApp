import 'package:flutter/material.dart';
import 'package:planealo_app/pages/index.dart';

class MyRoutes {
  static const String rHOME = '/inicio';
  static const String rLOGIN = '/login';
  static const String rREGISTER = '/register';
  static const String rVerify = '/verify';
  static const String rWELCOME = '/bienvenida_page';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ('/bienvenida_page'):
        return MaterialPageRoute(builder: (_) => const BienvenidaPage());
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
