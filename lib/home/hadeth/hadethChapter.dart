import 'package:flutter/material.dart';

class HadethChapter extends StatelessWidget {
  String text;
   HadethChapter({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,style:Theme.of(context).textTheme.bodyMedium,
    textDirection: TextDirection.rtl,
    textAlign: TextAlign.center,);
  }
}