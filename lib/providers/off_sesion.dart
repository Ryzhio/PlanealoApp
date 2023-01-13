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
    String email = 'planealo.teems@gmail.com';
    String asunto = 'Developer Planealo';
    String msg = '';

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
    String url = 'https://youtu.be/m1u-QGwdOGE';
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
    String phone = 'https://www.instagram.com/plan.ealo/';
    // String msg = 'Feliz Navidad!';
    String urlEncode = Uri.encodeFull(//'https://wa.me/$phone?text=$msg'
        phone);
    if (await canLaunchUrlString(urlEncode)) {
      await launchUrlString(
        urlEncode,
        mode: LaunchMode.externalApplication,
      );
    }
  }
}
