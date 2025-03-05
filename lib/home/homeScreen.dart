import 'package:flutter/material.dart';
import 'package:islamy_project/home/taps/hadeth.dart';
import 'package:islamy_project/home/taps/quran.dart';
import 'package:islamy_project/home/taps/radio.dart';
import 'package:islamy_project/home/taps/taspeh.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='home';
   
 HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int selectedTab=0;
   List<Widget> taps = [
    RadioTap(),
    TasbehTap(),
    HadethTap(),
    QuranTap()
   ];

  @override
  Widget build(BuildContext context) {
    
    return
     Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/background.png'),
        fit: BoxFit.fill)
      ),
      child: 
      Scaffold(
        appBar: AppBar(title:const Text( "اسلامي"),),
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
          icon: const ImageIcon(AssetImage('assets/images/radio.png')),label: 'الراديو'),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).colorScheme.primary,
          icon: const ImageIcon(AssetImage('assets/images/sebha.png')),label: 'التسبيح'),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).colorScheme.primary,
          icon: const ImageIcon(AssetImage('assets/images/hadeth.png')),label: 'الاحاديث'),
        BottomNavigationBarItem(
          backgroundColor: Theme.of(context).colorScheme.primary,
          icon: const ImageIcon(AssetImage('assets/images/quran.png')),label: 'القران'),
        ],),
        body: taps[selectedTab],
      ),
      
    );
  }
}