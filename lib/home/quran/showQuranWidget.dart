import 'package:flutter/material.dart';
import 'package:islamy_project/home/quran/contantOfQuran.dart';

class ShowWidgetOfQuranTap extends StatelessWidget {
     String suraName;
     int numbers;
     int index;

   ShowWidgetOfQuranTap({super.key,required this.suraName,
        required this.numbers, required this.index});


  @override
  Widget build(BuildContext context) {
    return 
    
    InkWell(
      onTap: () => 
      Navigator.pushNamed(context,QuranContant.routeName,
          arguments: QuranArguments(suraName, index)),
      child:  
       Row(children: [
        Expanded(child:
         Text(suraName,
         style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold), 
         textAlign: TextAlign.center)),
        Container(
          height: 35,
          width: 3,
          color: Theme.of(context).colorScheme.primary,
        ),
        Expanded(child: 
         Text(numbers.toString(),
         style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
         textAlign: TextAlign.center,)),
        
      ],
      ),
    );
  }
}