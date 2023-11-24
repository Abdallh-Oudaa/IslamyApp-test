import 'package:flutter/material.dart';
import 'package:news_app/CategroyClassData.dart';

class CategoryIcon extends StatelessWidget {
  CagetroyModel cagetroyModel;
  int index;
   CategoryIcon(this.cagetroyModel,this.index,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cagetroyModel.color,
      child: Column(children: [
        Image.asset("assets/images/${cagetroyModel.imagepath}"),
        Text(cagetroyModel.title),
    ],),);
  }
}