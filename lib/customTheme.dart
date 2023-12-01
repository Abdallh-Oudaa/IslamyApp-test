import 'package:flutter/material.dart';

class CustomTheme {
  static bool isDark = false;
  static const Color primaryColorLight = Color(0xFFB7935F);
  static const Color primaryColorDark = Color(0xFF141A2E);

  static ThemeData ThemeLight = ThemeData(
    bottomSheetTheme:const BottomSheetThemeData(backgroundColor:Colors.white),
    cardTheme: const CardTheme(
      elevation: 0,
      color: Colors.white,
    ),
    dividerColor: primaryColorLight,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black, unselectedItemColor: Colors.white),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColorLight,
      primary: primaryColorLight,
      secondary: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyLarge:TextStyle(color:primaryColorLight,fontSize: 20,fontWeight: FontWeight.w400),
      labelLarge: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
      labelMedium: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),
      titleLarge: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 22,
        color: Colors.white,
      ),
    ),
    useMaterial3: true,
  );

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////
  static ThemeData ThemeDark = ThemeData(
    bottomSheetTheme:const BottomSheetThemeData(backgroundColor:primaryColorDark),
    
    cardTheme:const CardTheme(elevation: 0, color: Color(0xFF141A2E)),
    dividerColor:const Color(0xFFFACC1D),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Color(0xFFFACC1D),
        unselectedItemColor: Colors.white),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColorDark,
      primary: primaryColorDark,
      secondary: primaryColorDark,

    ),
    textTheme: const TextTheme(
      bodyLarge:TextStyle(color:Color(0xFFFACC1D,),fontSize: 20,fontWeight: FontWeight.w400),
      labelLarge: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(
          color: Color(0xFFFACC1D), fontSize: 20, fontWeight: FontWeight.w400),
      titleLarge: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
      labelMedium: TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 22,
        color: Colors.white,
      ),
    ),
    useMaterial3: true,
  );
}
