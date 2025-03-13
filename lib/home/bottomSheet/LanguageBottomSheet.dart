import 'package:flutter/material.dart';
import 'package:islamy_project/home/bottomSheet/UnSelectedBottomSheet.dart';
import 'package:islamy_project/home/bottomSheet/selectedBottomSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_project/provider/settingProvider.dart';
import 'package:provider/provider.dart';

class Languagebottomsheet extends StatelessWidget {
  const Languagebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider =Provider.of<SettingProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
         SelectedBottomSheet(selectedItem: settingProvider.language=='ar'
            ?AppLocalizations.of(context)!.arabic
            :AppLocalizations.of(context)!.english),
          SizedBox(height: 20,),
          InkWell(
            onTap: () {
              settingProvider.changeLangauge(settingProvider.language=='ar'
                                             ?'en'
                                             :'ar');
            },
            child: UnSelectedBottomSheet(unselectedItem: 
            settingProvider.language=='ar'
            ?AppLocalizations.of(context)!.english
            :AppLocalizations.of(context)!.arabic))
         ],
      ),
    );
  }
}