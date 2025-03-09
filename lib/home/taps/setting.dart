import 'package:flutter/material.dart';
import 'package:islamy_project/home/bottomSheet/LanguageBottomSheet.dart';
import 'package:islamy_project/home/bottomSheet/ThemeBottomSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SettingTap extends StatelessWidget {
  const SettingTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,      
        children: [
           Text(AppLocalizations.of(context)!.language,style:Theme.of(context).textTheme.titleSmall,),
          SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.onPrimaryContainer),
              borderRadius: BorderRadius.circular(15)
            ),
            child:
             GestureDetector(
              onTap: () {
                showModalBottomSheet(context: context, builder: (context) =>Languagebottomsheet(),);
              },
              child: Text('English',style:Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 20),
                  ),
                 ),
                ),
          SizedBox(height: 50,),
          
           Text(AppLocalizations.of(context)!.theme,style:Theme.of(context).textTheme.titleSmall,),
          SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.onPrimaryContainer),
              borderRadius: BorderRadius.circular(15)
            ),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(context: context, builder: (context) => ThemeBottomSheet(),);
              },
              child: Text(AppLocalizations.of(context)!.dark,
              style:Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 20),
                  ),
                 ),
                ),
          
        ],
      ),
    );
  }
}