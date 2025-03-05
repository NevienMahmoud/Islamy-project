import 'package:flutter/material.dart';

class QuranChapter extends StatelessWidget {
  String content;
  
   QuranChapter({super.key, required this.content,});

  @override
  Widget build(BuildContext context) {
    return Text(' $content '
    ,style: TextStyle(fontSize: 25),
    textDirection: TextDirection.rtl,
    textAlign: TextAlign.center,)
    ;
  }
}