import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LauncherProvider extends ChangeNotifier {
  bool isVisible = false;

  //MENU
  void activeMenu() {
    (isVisible == false) ? (isVisible = true) : (isVisible = false);
    notifyListeners();
  }

  //MAPA
  void goMapLauncher() async {
    String url = 'https://goo.gl/maps/iXuWwMTdNfzU5jjf8';

    String urlEncode = Uri.encodeFull(url);
    if (await canLaunchUrlString(urlEncode)) {
      await launchUrlString(
        urlEncode,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  //EMAIL
  void goEmailLauncher() async {
    String email = 'flutter@gmail.com';
    String asunto = 'DEMO Developer';
    String msg = 'Estamos probando el correo desde Flutter';

    String urlEncode =
        Uri.encodeFull('mailto: $email?subject=$asunto&body=$msg');
    if (await canLaunchUrlString(urlEncode)) {
      await launchUrlString(
        urlEncode,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  //BROWSER
  void goBrowserLauncher() async {
    String url = 'https://youtu.be/VuNIsY6JdUw';
    String urlEncode = Uri.encodeFull(url);
    if (await canLaunchUrlString(urlEncode)) {
      await launchUrlString(
        urlEncode,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  //PHONE
  void goPhoneLauncher() async {
    String phone = '+51959999999';
    String url = 'tel$phone';

    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    }
  }

  //WHATSAPP

  void goWhatsappLauncher() async {
    String phone = '+5195999999';
    String msg = 'Feliz Navidad!';
    String urlEncode = Uri.encodeFull('https://wa.me/$phone?text=$msg');
    if (await launchUrlString(urlEncode)) {
      await launchUrlString(
        urlEncode,
        mode: LaunchMode.externalApplication,
      );
    }
  }
}
