import 'package:flutter/material.dart';

class BottomTheme extends StatefulWidget {
  const BottomTheme({super.key});

  @override
  State<BottomTheme> createState() => _BottomThemeState();
}

class _BottomThemeState extends State<BottomTheme> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          seletedItem("light"),
          unselectedItem("dark"),
        ],
      ),
    );
  }

  Widget seletedItem(String theme) {
    return
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(theme,style:  Theme.of(context).textTheme.bodyLarge),
        Icon(Icons.check,color:Theme.of(context).dividerColor,),],
    );
  }

 Widget unselectedItem(String theme){
  return
    Text(theme,style: Theme.of(context).textTheme.labelLarge,);
  }
}
