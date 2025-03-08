import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_project/Style/AppStyle.dart';
import 'package:islamy_project/home/hadeth/hadethChapter.dart';

class Contantofhadeth extends StatefulWidget {
  static const String routeName='ContantOfHadeth';
   Contantofhadeth({super.key});

  @override
  State<Contantofhadeth> createState() => _ContantofhadethState();
}

class _ContantofhadethState extends State<Contantofhadeth> {
  @override
  Widget build(BuildContext context) {
    HadethArgus args = ModalRoute.of(context)?.settings.arguments as HadethArgus;
    if (hadethLiens.isEmpty){
      loadFile(args.index);
    }
    return  Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppStyle.isDark
                              ?'assets/images/dark_bg.png'
                              : 'assets/images/background.png'),
        fit: BoxFit.cover)
      ),
      child:
      Scaffold(
        appBar: AppBar(
          title: Text('الحديث رقم  ${args.index+1}'),
        ),
        body: Card(child: 
        hadethLiens.isEmpty
        ?const Center(child: CircularProgressIndicator()) 
        :ListView.builder(itemBuilder: (context, index) => 
        HadethChapter(text: hadethLiens[index]),
        itemCount: hadethLiens.length,),
         ),
       ),
      ) ;
  }

  List<String> hadethLiens=[];

  loadFile(int index)async{
    String readFile = await rootBundle.loadString('assets/files/h${index+1}.txt');
   hadethLiens = readFile.split('/n');
   setState(() {
     
   });
  }
}
class HadethArgus{
  int index;
  HadethArgus(this.index);
}