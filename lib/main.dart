import 'package:flutter/material.dart';
import 'package:news_app/customTheme.dart';
import 'package:news_app/ui/hadethTap/hadesContent.dart';
import 'package:news_app/ui/homeScreen/homeScreen.dart';
import 'package:news_app/ui/quranTap/chapterContentWidget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.ThemeLight,
      darkTheme:CustomTheme.ThemeDark,
      themeMode: ThemeMode.light,
      routes:{
          homeScreen.routName:(context) =>  homeScreen(),
          ChapterDetales.routname:(context) => ChapterDetales(),
          chapterHadesContent.RoutName:(context)=>const chapterHadesContent()
      },
      initialRoute: homeScreen.routName,
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  locale:const Locale("ar"),
      );
  }
}
