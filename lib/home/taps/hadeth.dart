import 'package:flutter/material.dart';
import 'package:islamy_project/home/hadeth/nameOfHadethList.dart';

class HadethTap extends StatelessWidget {
  const HadethTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/hadeth_header.png')),
         const Divider(),
         Text('الأحاديث',style: Theme.of(context).textTheme.titleSmall,),
        const Divider(),
        Expanded(flex: 2,
          child: ListView.separated(itemBuilder: (context, index) => HadethNames(index: index),
           separatorBuilder: (context, index) =>const Divider(color: Colors.transparent,), 
           itemCount: 50),
        )

      ],
    )
    ;
  }
}