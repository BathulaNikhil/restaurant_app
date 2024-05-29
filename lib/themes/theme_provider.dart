import 'package:flutter/material.dart';
import 'package:restaurant_app/themes/dark_mode.dart';
import 'package:restaurant_app/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightTheme;


  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == darkTheme;
  set ThemeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

}