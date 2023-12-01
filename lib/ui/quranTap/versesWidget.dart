
import 'package:flutter/material.dart';

class versesWidget extends StatelessWidget {
  String content;
  int index;
   versesWidget( {required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      alignment: Alignment.center,
      child: Text("$content{${index+1}}",style:Theme.of(context).textTheme.bodyMedium,
    textDirection: TextDirection.rtl,  ),);
  }
}