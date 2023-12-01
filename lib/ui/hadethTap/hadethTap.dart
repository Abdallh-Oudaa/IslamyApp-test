import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/ui/hadethTap/chapterTitleWidget.dart';
import 'package:news_app/ui/hadethTap/hadesData.dart';

class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  @override
  Widget build(BuildContext context) {
    if (Ahadeth.isEmpty) LoadHadesFile();
    return Column(
      children: [
        const Expanded(
            flex: 1,
            child: Image(
              image: AssetImage("assets/images/hadeth_logo.png"),
            )),
        Expanded(
          flex: 3,
          child: Ahadeth.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (context, index) =>
                      ChpaterTitleHades(Ahadeth[index]),
                  separatorBuilder: (context, index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        width: double.infinity,
                        height: 2,
                        color: Theme.of(context).dividerColor,
                      ),
                  itemCount: Ahadeth.length),
        )
      ],
    );
  }

  List<hadesData> Ahadeth = [];

  void LoadHadesFile() async {
    String hadesText = await rootBundle.loadString("assets/file/ahadeth.txt");
    List<String> hadesList = hadesText.trim().split("#");
    for (int i = 0; i < hadesList.length; i++) {
      String hades = hadesList[i];
      List<String> hadeslines = hades.trim().split("\n");
      String title = hadeslines[0];
      hadeslines.removeAt(0);
      String content = hadeslines.join();
      hadesData onehades = hadesData(title: title, content: content);
      Ahadeth.add(onehades);
    }
    setState(() {});
  }
}
