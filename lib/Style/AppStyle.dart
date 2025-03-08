import 'package:flutter/material.dart';

class AppStyle  {
  static const bool isDark= false;
  static const Color lightPrimary=Color(0xffB7935F);
  static const Color darkPrimary=Color(0xff141A2E);
  static const Color darkSecondary=Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
         textTheme: const TextTheme(
          titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),
          bodySmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.black
          ),
          bodyMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.black
          ),
          displayMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: lightPrimary
          ),
         ),
         scaffoldBackgroundColor: Colors.transparent,
         appBarTheme: const AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          titleTextStyle: TextStyle(color: Colors.black,
          fontSize: 30,fontWeight: FontWeight.bold),
          backgroundColor: Colors.transparent
         ),
         colorScheme: ColorScheme.fromSeed(seedColor: Colors. white,
         primary:  lightPrimary,
         secondary:  lightPrimary.withOpacity(.75),
         onPrimaryContainer: lightPrimary),
         bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: lightPrimary,
          selectedIconTheme: IconThemeData(color: Colors.black,size: 30),
          unselectedIconTheme: IconThemeData(size: 30),
          selectedItemColor: Colors.black
         ),
         dividerTheme: const DividerThemeData(
          color:  lightPrimary,
          thickness: 2,
         ),
         cardTheme: const CardTheme(
          color: Colors.white,
          elevation: 20,
          margin: EdgeInsets.all(20),
         ),
         bottomSheetTheme:const BottomSheetThemeData(
          backgroundColor: Colors.white
         )

      );
      
  static ThemeData darkTheme = ThemeData(
     textTheme: const TextTheme(
          titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white
          ),
          bodySmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.white
          ),
          bodyMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: darkSecondary
          ),
           displayMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: darkSecondary
          ),
         ),
         scaffoldBackgroundColor: Colors.transparent,
         appBarTheme: const AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          titleTextStyle: TextStyle(color: Colors.white,
          fontSize: 30,fontWeight: FontWeight.bold),
          backgroundColor: Colors.transparent
         ),
         colorScheme: ColorScheme.fromSeed(seedColor: Colors. white,
         primary:  darkPrimary,
         secondary:  darkSecondary,
         onPrimaryContainer: darkSecondary,
         ),
         bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor:darkPrimary,
          selectedIconTheme: IconThemeData(color: darkSecondary,size: 30),
          unselectedIconTheme: IconThemeData(size: 30),
          selectedItemColor: darkSecondary
         ),
         dividerTheme: const DividerThemeData(
          color:  darkSecondary,
          thickness: 2,
         ),
         cardTheme: const CardTheme(
          color: Color(0xff141A2E),
          elevation: 20,
          margin: EdgeInsets.all(20),
         ),
         bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: darkPrimary
         )

      );

}