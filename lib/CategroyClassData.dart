import 'package:flutter/material.dart';

class CagetroyModel{
  String id;
  String title;
  Color color;
  String imagepath;

CagetroyModel(this.id,this.title,this.color,this.imagepath);//to path it to List
static List<CagetroyModel> getAllCategory(){
  return[
    CagetroyModel("Sports", "Sports", const Color(0xFFC91C22), "Sports.png"),
    CagetroyModel("Politics", "Politics", const Color(0xFF003E90), "Politics.png"),
    CagetroyModel("Health", "Health", const Color(0xFFED1E79), "Health.png"),
    CagetroyModel("Bussines", "Bussines", const Color(0xFFCF7E48), "Bussines.png"),
    CagetroyModel("Enviroment", "Enviroment", const Color(0xFF4882CF), "Enviroment.png"),
    CagetroyModel("Science", "Science", const Color(0xFFF2D352), "Science.png"),

  ];
}

}