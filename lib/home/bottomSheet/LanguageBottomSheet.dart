import 'package:flutter/material.dart';
import 'package:islamy_project/home/bottomSheet/UnSelectedBottomSheet.dart';
import 'package:islamy_project/home/bottomSheet/selectedBottomSheet.dart';

class Languagebottomsheet extends StatelessWidget {
  const Languagebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
         SelectedBottomSheet(selectedItem: 'English'),
          SizedBox(height: 20,),
          UnSelectedBottomSheet(unselectedItem: 'العربية',)
         ],
      ),
    );
  }
}