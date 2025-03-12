import 'package:flutter/material.dart';
import 'package:islamy_project/home/bottomSheet/LanguageBottomSheet.dart';
import 'package:islamy_project/home/bottomSheet/ThemeBottomSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_project/provider/settingProvider.dart';
import 'package:provider/provider.dart';


class SettingTap extends StatelessWidget {
  const SettingTap({super.key});

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider =Provider.of<SettingProvider>(context);
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
              child: Text(settingProvider.language=='ar'
              ?AppLocalizations.of(context)!.arabic
              :AppLocalizations.of(context)!.english,
              style:Theme.of(context).textTheme.bodySmall?.copyWith(
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
              child: Text(settingProvider.themeMode==ThemeMode.dark
             ? AppLocalizations.of(context)!.dark
             :AppLocalizations.of(context)!.light,
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