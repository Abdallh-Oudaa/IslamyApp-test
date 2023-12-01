import 'package:flutter/material.dart';
import 'package:news_app/data/classData.dart';
import 'package:news_app/ui/quranTap/chapterContentWidget.dart';

class ChapterTitleWidget extends StatelessWidget {
  String title;
  int index;
   ChapterTitleWidget(this.title,this.index,{super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(ChapterDetales.routname,
        arguments:DataModel(title: title, index: index) );
      },
      child: Container(
        margin:const EdgeInsets.symmetric(horizontal: 0,vertical: 5),
        alignment: Alignment.center,
        child: Text(title,style:Theme.of(context).textTheme.labelMedium,),
      ),
    );
  }
}