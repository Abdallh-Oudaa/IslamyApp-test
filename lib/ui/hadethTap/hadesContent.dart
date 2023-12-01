import 'package:flutter/material.dart';
import 'package:news_app/customTheme.dart';
import 'package:news_app/ui/hadethTap/hadesData.dart';

class chapterHadesContent extends StatelessWidget {
  static const String RoutName = "chaterhadescontent";
  const chapterHadesContent({super.key});

  @override
  Widget build(BuildContext context) {
    hadesData args = ModalRoute.of(context)?.settings.arguments as hadesData;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(CustomTheme.isDark
              ? "assets/images/image_dark.png"
              : "assets/images/HeaderScreen.png"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          appBar: AppBar(
              title: Center(
            child: Text(args.title,style: Theme.of(context).textTheme.labelMedium,),
          )),
          body: Card(
              elevation: 0,
              margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 70),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        padding:
                           const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Text(
                          args.content,
                          style:Theme.of(context).textTheme.bodyMedium
                        )),
                  ],
                ),
              )),
        ));
  }
}
