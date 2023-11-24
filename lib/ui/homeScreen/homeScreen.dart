import 'package:flutter/material.dart';
import 'package:news_app/ui/homeScreen/Drawer.dart';
import 'package:news_app/ui/homeScreen/gatergories.dart';
import 'package:news_app/ui/homeScreen/settings.dart';

class homeScreen extends StatefulWidget {
  static const routName = "HomeScreen";
   homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/bacgroundImage.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        drawer:DrawerTap(onClick) ,
        appBar: AppBar(
          title: Center(
            child: Text(
              "News App",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ),
        body: selectedItem,
      ),
    );
  }

  Widget selectedItem= Catergory();

  void onClick(EnumList enumList){
    Navigator.pop(context);
   switch (enumList){
    case EnumList.gatergories:{
      setState(() {
        selectedItem=Catergory();
      });
    }
    case EnumList.settings:{
      selectedItem=Settings();
    }
   }
setState(() {
  
});
  }
  
   }