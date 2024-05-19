import "package:flutter/material.dart";
import 'LightMode.dart';
import 'DarkMode.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData _themeData= lightMode;
  ThemeData get themeData => _themeData;

  bool get IsDarkMode => _themeData == DarkMode;

  set themeData(ThemeData themeData){
    _themeData=themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if(_themeData==lightMode){
      themeData=DarkMode;
    }else{
      themeData=lightMode;
    }
  }
}