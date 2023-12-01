import 'package:flutter/material.dart';
import 'package:news_app/customTheme.dart';
import 'package:news_app/ui/settingsTap/bottomLanguge.dart';
import 'package:news_app/ui/settingsTap/bottomTheme.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 80, horizontal: 15),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(CustomTheme.isDark
            ? "assets/images/image_dark.png"
            : "assets/images/HeaderScreen.png"),
        fit: BoxFit.cover,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text("theme",style: Theme.of(context).textTheme.labelLarge,),
          InkWell(
            onTap: () {
              showbottomTheme();
            },
            child: Container(
              padding: const EdgeInsets.all(7),
              width: double.infinity,
              decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
                  border: Border.all(
                      width: 2, color: Theme.of(context).dividerColor)),
              child:  Text("light",style: Theme.of(context).textTheme.labelLarge,),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
           Text("languge",style: Theme.of(context).textTheme.labelLarge,),
          InkWell(
            onTap: () {
              showbottomLanguge();
            },
            child: Container(
              padding: const EdgeInsets.all(7),
              width: double.infinity,
              decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
                  
                  border: Border.all(
                      width: 2, color: Theme.of(context).dividerColor)),
              child:  Text("English",style: Theme.of(context).textTheme.labelLarge,),
            ),
          ),
        ],
      ),
    );
  }

  void showbottomTheme() {
    showModalBottomSheet(
      context: context,
      builder: (context) => BottomTheme(),
    );
  }

  void showbottomLanguge() {
    showModalBottomSheet(
      context: context,
      builder: (context) => BottomLanguge(),
    );
  }
}
