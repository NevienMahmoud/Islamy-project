import 'package:flutter/material.dart';
import 'package:islamy_project/home/hadeth/contantOfHadeth.dart';

class HadethNames extends StatelessWidget {
  int index;
   HadethNames({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => 
      Navigator.pushNamed(context,Contantofhadeth.routeName,arguments: HadethArgus(index)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('الحديث رقم ${index+1}',
          style: Theme.of(context).textTheme.bodyMedium,)
        ],
      ),
    );
  }
}