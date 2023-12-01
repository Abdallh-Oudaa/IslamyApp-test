import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/customTheme.dart';
import 'package:news_app/data/classData.dart';
import 'package:news_app/ui/quranTap/versesWidget.dart';

class ChapterDetales extends StatefulWidget {
  static const routname = "ChpaterDetales";
  ChapterDetales({super.key});

  @override
  State<ChapterDetales> createState() => _ChapterDetalesState();
}

class _ChapterDetalesState extends State<ChapterDetales> {
  @override
  Widget build(BuildContext context) {
    DataModel args = ModalRoute.of(context)?.settings.arguments as DataModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
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
          body: verses.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Card(
                  elevation: 0,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 70),
                  child: ListView.builder(
                      itemBuilder: (context, index) => versesWidget(
                            content: verses[index],
                            index: index,
                          ),
                      /* separatorBuilder: (context, index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          width: double.infinity,
                          height: 2,
                          color: Theme.of(context).primaryColor,
                        ),*/
                      itemCount: verses.length),
                )),
    );
  }

  List<String> verses = [];

  void loadFile(int index) async {
    String soura = await rootBundle.loadString("assets/file/${index + 1}.txt");
    print(soura);
    verses = soura.trim().split("\n");
    setState(() {});
  }
}
