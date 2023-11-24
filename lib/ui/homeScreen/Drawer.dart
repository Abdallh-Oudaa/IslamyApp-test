import 'package:flutter/material.dart';

class DrawerTap extends StatelessWidget {
  OnClickDrawer onClickDrawer;
  DrawerTap(this.onClickDrawer, {super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 23),
            color: Theme.of(context).colorScheme.primary,
            child: Text(
              "News App",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          InkWell(
            onTap: () {
              onClickDrawer(EnumList.gatergories);
            },
            child: const Row(
              children: [
                Icon(Icons.list),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "categroys",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              onClickDrawer(EnumList.settings);
            },
            child: const Row(
              children: [
                Icon(Icons.settings),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "settings",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

typedef OnClickDrawer = void Function(EnumList enumList);

enum EnumList {
  gatergories,
  settings,
}
