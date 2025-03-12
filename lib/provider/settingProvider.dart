import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{

  ThemeMode themeMode = ThemeMode.light;
  changeTheme(ThemeMode newMode){
    if(newMode==themeMode) return;
    themeMode= newMode;
    notifyListeners();
  }

  String language ='en';
  changeLangauge(String newLang){
    if (newLang==language) return;
    language= newLang;
    notifyListeners();
  }

}