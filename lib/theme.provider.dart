import 'package:flutter/material.dart';
import 'package:weatherapp/theme.dart';

class ThemeProvider with ChangeNotifier {

  bool isDarkMode = false;
  bool get getisDarkMode => isDarkMode;

  ThemeData _themeData = lightmode;

  ThemeData get themeData => _themeData;

  void toggleTheme() {
    if (_themeData == lightmode) {
      _themeData = darkmode;
    } else {
      _themeData = lightmode;
    }
    isDarkMode = !isDarkMode;

    notifyListeners();
  }
}
