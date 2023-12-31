import 'package:flutter/material.dart';
import 'package:news_app/customTheme.dart';
import 'package:news_app/ui/hadethTap/hadethTap.dart';
import 'package:news_app/ui/quranTap/quranTap.dart';
import 'package:news_app/ui/radioTap/radioTap.dart';
import 'package:news_app/ui/sebhaTap/sebhaTap.dart';
import 'package:news_app/ui/settingsTap/settingsTap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class homeScreen extends StatefulWidget {
  static const routName = "HomeScreen";
  homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selctedItme = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(CustomTheme.isDark
            ? "assets/images/image_dark.png"
            : "assets/images/HeaderScreen.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title:  Center(
            child: Text(AppLocalizations.of(context)!.islamy,style:Theme.of(context).textTheme.titleLarge,),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selctedItme,
          onTap: (index) {
            setState(() {
              selctedItme = index;
            });
          },
          elevation: 2,
          items: [
            
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage(
                    "assets/images/ic_quran.png",
                  ),
                ),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage("assets/images/ic_hadeth.png"),
                ),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage("assets/images/ic_sebha.png"),
                ),
                label: AppLocalizations.of(context)!.tasbeh),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                  AssetImage("assets/images/ic_radio.png"),
                ),
                label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon:const Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings)
          ],
        ),
        body: Taps[selctedItme],
      ),
    );
  }

  List<Widget> Taps = [
    const QuranTap(),
    HadethTap(),
    const SebhaTap(),
    const RadioTap(),
    const Settings(),
  ];
}
