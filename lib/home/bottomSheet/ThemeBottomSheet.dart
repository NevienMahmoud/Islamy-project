import 'package:flutter/material.dart';
import 'package:islamy_project/home/bottomSheet/UnSelectedBottomSheet.dart';
import 'package:islamy_project/home/bottomSheet/selectedBottomSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_project/provider/settingProvider.dart';
import 'package:provider/provider.dart';


class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider =Provider.of<SettingProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
         SelectedBottomSheet(selectedItem:  settingProvider.themeMode==ThemeMode.dark
             ? AppLocalizations.of(context)!.dark
             :AppLocalizations.of(context)!.light),
          SizedBox(height: 20,),
          InkWell(
            onTap: () {
               settingProvider.changeTheme(
                settingProvider.themeMode==ThemeMode.dark
                ?ThemeMode.light
                :ThemeMode.dark
               );
            },
            child:
             UnSelectedBottomSheet(unselectedItem:
             settingProvider.themeMode==ThemeMode.dark
             ? AppLocalizations.of(context)!.light
             :AppLocalizations.of(context)!.dark))
         ],
      ),
    );
  }
}