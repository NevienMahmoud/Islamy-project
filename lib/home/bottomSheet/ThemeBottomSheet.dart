import 'package:flutter/material.dart';
import 'package:islamy_project/home/bottomSheet/UnSelectedBottomSheet.dart';
import 'package:islamy_project/home/bottomSheet/selectedBottomSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
         SelectedBottomSheet(selectedItem: AppLocalizations.of(context)!.dark ),
          SizedBox(height: 20,),
          UnSelectedBottomSheet(unselectedItem: AppLocalizations.of(context)!.light,)
         ],
      ),
    );
  }
}