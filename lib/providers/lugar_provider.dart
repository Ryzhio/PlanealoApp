import 'package:flutter/cupertino.dart';
import 'package:planealo_app/models/lugar_model.dart';

class LugarFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  Lugar lugar;
  LugarFormProvider(this.lugar);

  bool isValidForm() {
    return formkey.currentState?.validate() ?? false;
  }
}
