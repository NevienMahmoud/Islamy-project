import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.light;
  
  changeTheme(ThemeMode newMode){
    if(newMode==themeMode) return;
    themeMode= newMode;

    notifyListeners();
  }
}