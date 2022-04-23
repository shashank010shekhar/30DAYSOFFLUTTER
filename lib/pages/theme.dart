import 'package:flutter/material.dart';
import 'config.dart';

bool _isDark = false;
bool col = false;

class MyTheme with ChangeNotifier {
  MyTheme() {
    if (box.containsKey('currentTheme'))
      _isDark = box.get('currentTheme');
    else
      box.put('currentTheme', _isDark);
  }

  ThemeMode currentTheme() {
    return _isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    _isDark = !_isDark;
    box.put('currentTheme', _isDark);
    col = !col;
    notifyListeners();
  }
}
