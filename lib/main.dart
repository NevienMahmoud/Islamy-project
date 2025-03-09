import 'package:flutter/material.dart';
import 'package:islamy_project/Style/AppStyle.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy_project/home/hadeth/contantOfHadeth.dart';
import 'package:islamy_project/home/homeScreen.dart';
import 'package:islamy_project/home/quran/contantOfQuran.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main(){
  runApp(
    MaterialApp(
      theme: AppStyle.lightTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: AppStyle.isDark
               ?ThemeMode.dark
               :ThemeMode.light,
       localizationsDelegates: [
             AppLocalizations.delegate,
             GlobalMaterialLocalizations.delegate,
             GlobalWidgetsLocalizations.delegate,
             GlobalCupertinoLocalizations.delegate,
          ],
       supportedLocales: [
             Locale('en'), // English
             Locale('ar'), // Spanish
          ],  
          locale: Locale('ar'), 
      
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranContant.routeName:(_)=>QuranContant(),
        Contantofhadeth.routeName:(_)=>Contantofhadeth(),
      },
    )
  );
}