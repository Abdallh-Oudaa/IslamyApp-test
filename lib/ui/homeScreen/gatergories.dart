import 'dart:math';

import 'package:flutter/material.dart';
import 'package:news_app/CategroyClassData.dart';
import 'package:news_app/ui/homeScreen/CategoryIcon.dart';

class Catergory extends StatelessWidget {
  List<CagetroyModel> categroyList=CagetroyModel.getAllCategory();
   Catergory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GridView.builder(gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 24, 
            crossAxisSpacing: 24, ),
           itemBuilder: (context,index)=> CategoryIcon(categroyList[index],index),
           itemCount: categroyList.length,),
        ],
      ),
    );
  }
}