import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _img = '';
  static String _nombre = '';
  static String _apellido = '';
  static String _birthday = '';
  static String _email = '';
  static String _mobile = '';
  static String _twitter = '';
  static String _facebook = '';
  static String _linkedin = '';
  static String _aldea = '';
  static String _cargo = '';
  static int _genero = 1;

  static bool _theme = false;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // GET & SET

  //IMG
  static String get img {
    return _prefs.getString('img') ?? _img;
  }

  static set img(String img) {
    _img = img;
    _prefs.setString('img', img);
  }

  //Nombres
  static String get nombre {
    return _prefs.getString('nombre') ?? _nombre;
  }

  static set nombre(String nombre) {
    _nombre = nombre;
    _prefs.setString('nombre', nombre);
  }

  //Apellido
  static String get apellido {
    return _prefs.getString('apellido') ?? _apellido;
  }

  static set apellido(String apellido) {
    _apellido = apellido;
    _prefs.setString('apellido', apellido);
  }

  //birthday
  static String get birthday {
    return _prefs.getString('birthday') ?? _birthday;
  }

  static set birthday(String birthday) {
    _birthday = birthday;
    _prefs.setString('birthday', birthday);
  }

  //email
  static String get email {
    return _prefs.getString('email') ?? _email;
  }

  static set email(String email) {
    _email = email;
    _prefs.setString('email', email);
  }

  //mobile
  static String get mobile {
    return _prefs.getString('mobile') ?? _mobile;
  }

  static set mobile(String mobile) {
    _mobile = mobile;
    _prefs.setString('mobile', mobile);
  }

  //twitter
  static String get twitter {
    return _prefs.getString('twitter') ?? _twitter;
  }

  static set twitter(String twitter) {
    _twitter = twitter;
    _prefs.setString('twitter', twitter);
  }

  //facebook
  static String get facebook {
    return _prefs.getString('facebook') ?? _facebook;
  }

  static set facebook(String facebook) {
    _facebook = facebook;
    _prefs.setString('facebook', facebook);
  }

  //linkedin
  static String get linkedin {
    return _prefs.getString('linkedin') ?? _linkedin;
  }

  static set linkedin(String linkedin) {
    _linkedin = linkedin;
    _prefs.setString('linkedin', linkedin);
  }

  //Aldea
  static String get aldea {
    return _prefs.getString('aldea') ?? _aldea;
  }

  static set aldea(String aldea) {
    _aldea = aldea;
    _prefs.setString('aldea', aldea);
  }

  //Cargo
  static String get cargo {
    return _prefs.getString('cargo') ?? _cargo;
  }

  static set cargo(String cargo) {
    _cargo = cargo;
    _prefs.setString('cargo', cargo);
  }

  //Genero
  static int get genero {
    return _prefs.getInt('genero') ?? _genero;
  }

  static set genero(int value) {
    _genero = value;
    _prefs.setInt('genero', value);
  }

  //Theme
  static bool get theme {
    return _prefs.getBool('theme') ?? _theme;
  }

  static set theme(bool value) {
    _theme = value;
    _prefs.setBool('theme', value);
  }
}
