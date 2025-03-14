import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider extends ChangeNotifier{

  ThemeMode themeMode = ThemeMode.light;
  changeTheme(ThemeMode newMode){
    if(newMode==themeMode) return;
    themeMode= newMode;
    savedTheme(newMode);
    notifyListeners();
  }

  String language ='en';
  changeLangauge(String newLang){
    if (newLang==language) return;
    language= newLang;
    notifyListeners();
  }

  void savedTheme(ThemeMode themeMode)async{
   SharedPreferences prefs = await SharedPreferences.getInstance();

   if (themeMode == ThemeMode.light){
    prefs.setString('theme', 'light');
   }else{
    prefs.setString('theme', 'dark');
   }

  }

  void getTheme()async{
   SharedPreferences prefs = await SharedPreferences.getInstance();
   String theme = prefs.getString('theme')??'light';

   if (theme == 'light'){
    themeMode = ThemeMode.light;
   }else{
    themeMode = ThemeMode.dark;
   }
   notifyListeners();
  
  }

}