import 'package:flutter/material.dart';
import 'package:islamy_project/Style/AppStyle.dart';
import 'package:islamy_project/home/taps/hadeth.dart';
import 'package:islamy_project/home/taps/quran.dart';
import 'package:islamy_project/home/taps/radio.dart';
import 'package:islamy_project/home/taps/setting.dart';
import 'package:islamy_project/home/taps/taspeh.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='home';
   
 HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int selectedTab=0;
   List<Widget> taps = [
     QuranTap(),
     HadethTap(),
     TasbehTap(),
     RadioTap(),
     SettingTap(),
    
   ];

  @override
  Widget build(BuildContext context) {
    
    return
     Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppStyle.isDark
                              ?'assets/images/dark_bg.png'
                              : 'assets/images/background.png'),
        fit: BoxFit.fill)
      ),
      child: 
      Scaffold(
        appBar: AppBar(title: Text( AppLocalizations.of(context)!.app_name),),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTab,
          onTap: (index) {
            setState(() {
              selectedTab=index;
            });
          },
         items:[
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).colorScheme.primary,
          icon: const ImageIcon(AssetImage('assets/images/quran.png')),
          label:AppLocalizations.of(context)!.quran),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).colorScheme.primary,
          icon: const ImageIcon(AssetImage('assets/images/hadeth.png')),
          label:AppLocalizations.of(context)!.ahadeth),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).colorScheme.primary,
          icon: const ImageIcon(AssetImage('assets/images/sebha.png')),
          label: AppLocalizations.of(context)!.tasbeh),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).colorScheme.primary,
          icon: const ImageIcon(AssetImage('assets/images/radio.png')),
          label: AppLocalizations.of(context)!.radio),
          BottomNavigationBarItem(
          backgroundColor: Theme.of(context).colorScheme.primary,
          icon: Icon(Icons.settings),
          label: AppLocalizations.of(context)!.setting),  
        ],),
        body: taps[selectedTab],
      ),
      
    );
  }
}