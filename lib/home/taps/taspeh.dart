import 'package:flutter/material.dart';
import 'package:islamy_project/provider/settingProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TasbehTap extends StatefulWidget {
  TasbehTap({super.key});

  @override
  State<TasbehTap> createState() => _TasbehTapState();
}

class _TasbehTapState extends State<TasbehTap> {
  int counter=0;
  int index=0;
  List<String> tasbee7=[
    'سبحان الله',
    'الحمد لله',
    'لا إله الإ الله',
    'أكبر الله',
  ];
  void onTap() {
   setState(() {
          counter ++;
      if(counter>33){
        counter=0;
        index++;
      }
      if(index==tasbee7.length){
        index=0;
      }
   });
  }

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * .08),
                child: Image.asset(
                  settingProvider.themeMode == ThemeMode.dark
                      ? 'assets/images/sebha_dark.png'
                      : 'assets/images/sebha_light.png',
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: -10,
                left: width * .27,
                child: Image.asset(
                  settingProvider.themeMode == ThemeMode.dark
                      ? 'assets/images/head_of_seb7a_dark.png'
                      : 'assets/images/head_of_seb7a_light.png',
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        ),
        const Spacer(),
        Text(AppLocalizations.of(context)!.sebha_counter,
            style: Theme.of(context).textTheme.titleSmall),
        const Spacer(),
        Container(
          width: width * 0.2,
          height: height * .1,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(25)),
          alignment: Alignment.center,
          child: Text(
            '$counter',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        const Spacer(flex: 3,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
            padding: EdgeInsets.symmetric(horizontal: height*0.04,vertical: width*.02)
          ),
          onPressed: onTap,
          child: Text(
            tasbee7[index],
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const Spacer(flex: 3)
      ],
    );
  }
}