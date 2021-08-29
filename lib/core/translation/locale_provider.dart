import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = Locale('fr', 'FR');

  Locale get locale => _locale;

  void setLocal(Locale newLocal) {
    _locale = newLocal;
    notifyListeners();
  }
}
