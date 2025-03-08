import 'package:flutter/material.dart';
import 'package:islamy_project/home/hadeth/nameOfHadethList.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTap extends StatelessWidget {
  const HadethTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/hadeth_header.png')),
         const Divider(),
         Text(AppLocalizations.of(context)!.ahadeth
        ,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
        Divider(),
        Expanded(flex: 2,
          child: ListView.separated(itemBuilder: (context, index) => HadethNames(index: index),
           separatorBuilder: (context, index) => Divider(color: Colors.transparent,), 
           itemCount: 50),
        )

      ],
    )
    ;
  }
}