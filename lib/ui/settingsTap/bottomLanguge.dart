import 'package:flutter/material.dart';

class BottomLanguge extends StatefulWidget {
  const BottomLanguge({super.key});

  @override
  State<BottomLanguge> createState() => _BottomLangugeState();
}

class _BottomLangugeState extends State<BottomLanguge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          seletedItem("English"),
          unselectedItem("Arabic"),
        ],
      ),
    );
  }

  Widget seletedItem(String theme) {
    return
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(theme,style: Theme.of(context).textTheme.bodyLarge),
        Icon(Icons.check,color:Theme.of(context).dividerColor,),],
    );
  }

 Widget unselectedItem(String theme){
  return
    Text(theme,style:Theme.of(context).textTheme.labelLarge);
  }
}
  
