import 'package:flutter/material.dart';
import 'package:islamy_project/Style/AppStyle.dart';
import 'package:islamy_project/home/hadeth/contantOfHadeth.dart';
import 'package:islamy_project/home/homeScreen.dart';
import 'package:islamy_project/home/quran/contantOfQuran.dart';

void main(){
  runApp(
    MaterialApp(
      theme: AppStyle.lightTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: AppStyle.isDark
               ?ThemeMode.dark
               :ThemeMode.light,
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