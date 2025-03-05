import 'package:flutter/material.dart';

class HadethChapter extends StatelessWidget {
  String text;
   HadethChapter({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,style:const TextStyle(fontSize: 25),
    textDirection: TextDirection.rtl,
    textAlign: TextAlign.center,);
  }
}