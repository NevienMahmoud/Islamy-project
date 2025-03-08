import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_project/Style/AppStyle.dart';
import 'package:islamy_project/home/quran/QuranChapter.dart';

class QuranContant extends StatefulWidget {
  static const String routeName='contant of Quran';
   QuranContant({super.key});

  @override
  State<QuranContant> createState() => _QuranContantState();
}

class _QuranContantState extends State<QuranContant> {
  @override
  Widget build(BuildContext context) {
   QuranArguments args= ModalRoute.of(context)?.settings.arguments as QuranArguments;
   if(suraLines.isEmpty){
   loadFile(args.index);
   }
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppStyle.isDark
                              ?'assets/images/dark_bg.png'
                              : 'assets/images/background.png'),
        fit: BoxFit.cover)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.nameOfSura),
        ),
        body:Card(child: 
         suraLines.isEmpty
         ? const Center(child: CircularProgressIndicator())
         :ListView.separated(
           itemBuilder: (context, index) => QuranChapter(content: suraLines[index],), 
           separatorBuilder: (context, index) =>const Divider(), 
           itemCount: suraLines.length),
      ),
    ));
  }

  List<String>suraLines=[];

loadFile(int index)async{
  String readFile =await rootBundle.loadString('assets/files/${index+1}.txt');
 suraLines= readFile.split('/n');
 setState(() {
   
 });
}
}
class QuranArguments{
  String nameOfSura;
  int index;
  QuranArguments(this.nameOfSura,this.index);
}