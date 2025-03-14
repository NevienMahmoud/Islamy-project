import 'package:flutter/material.dart';
import 'package:islamy_project/Style/AppStyle.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy_project/home/hadeth/contantOfHadeth.dart';
import 'package:islamy_project/home/homeScreen.dart';
import 'package:islamy_project/home/quran/contantOfQuran.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_project/provider/settingProvider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
   ChangeNotifierProvider(
    create: (context) => SettingProvider()..getTheme(),
    child: const MyApp())
  ); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SettingProvider settingProvider =Provider.of<SettingProvider>(context);
    return  MaterialApp(  
      theme: AppStyle.lightTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: settingProvider.themeMode,
      localizationsDelegates: const [
             AppLocalizations.delegate,
             GlobalMaterialLocalizations.delegate,
             GlobalWidgetsLocalizations.delegate,
             GlobalCupertinoLocalizations.delegate,
          ],
      supportedLocales:const [
             Locale('en'), // English
             Locale('ar'), //Arabic
          ],  
      locale: Locale(settingProvider.language), 
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranContant.routeName:(_)=>QuranContant(),
        Contantofhadeth.routeName:(_)=>Contantofhadeth(),
      },
    ) ;
  }
}
