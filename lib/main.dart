import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy_project/home/hadeth/contantOfHadeth.dart';
import 'package:islamy_project/home/homeScreen.dart';
import 'package:islamy_project/home/quran/contantOfQuran.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main(){
  runApp(
    MaterialApp(
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
          locale: Locale('en'), 
      theme: ThemeData(
         scaffoldBackgroundColor: Colors.transparent,
         appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black,
          fontSize: 30,fontWeight: FontWeight.bold),
          backgroundColor: Colors.transparent
         ),
         colorScheme: ColorScheme.fromSeed(seedColor: Colors. white,
         primary:  const Color(0xffB7935F),
         secondary:  const Color(0xffB7935F).withOpacity(.75)),
         bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(color: Colors.black,size: 30),
          unselectedIconTheme: IconThemeData(size: 30),
          selectedItemColor: Colors.black
         ),
         dividerTheme: const DividerThemeData(
          color:  Color(0xffB7935F),
          thickness: 2,
         ),
         cardTheme: CardTheme(
          color: Colors.white,
          elevation: 20,
          margin: EdgeInsets.all(20),
         )

      ),
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