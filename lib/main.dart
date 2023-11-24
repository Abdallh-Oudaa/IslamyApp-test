import 'package:flutter/material.dart';
import 'package:news_app/ui/homeScreen/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
   static const Color primaryColor= Color(0xFF39A552);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(23),
              bottomRight:Radius.circular(23) ,
            )
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor,
        primary: primaryColor,),
        textTheme: const TextTheme(
          
          headlineLarge: TextStyle(fontWeight: FontWeight.w400,fontSize: 22,color: Colors.white,),
        ),
        useMaterial3: true,
      ),
      routes:{
          homeScreen.routName:(context) =>  homeScreen(),
      },
      initialRoute: homeScreen.routName,
      );
  }
}
