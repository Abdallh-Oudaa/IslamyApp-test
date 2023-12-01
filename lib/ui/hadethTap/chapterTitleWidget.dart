import 'package:flutter/material.dart';
import 'package:news_app/ui/hadethTap/hadesContent.dart';
import 'package:news_app/ui/hadethTap/hadesData.dart';

class ChpaterTitleHades extends StatelessWidget {
  hadesData hades;


   ChpaterTitleHades(this.hades,{super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(chapterHadesContent.RoutName,
        arguments:hades );
      },
      child: Container(
        padding:const  EdgeInsets.symmetric(vertical: 5),
        alignment: Alignment.center,
        child: Text(hades.title,style:Theme.of(context).textTheme.labelMedium),
      ),
    );
  }
}