import 'package:flutter/material.dart';
import 'package:temp_and_humidity/const/my_colors.dart';
import 'package:temp_and_humidity/const/my_texts.dart';

import 'package:temp_and_humidity/pages/device_value_show.dart';

import '../widgets/my_appbar.dart';
import '../widgets/my_bottom_navigation_bar.dart';
import '../widgets/my_room.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(
          title: 'Ana Sayfa',
          textColorStyle: MyTexts.title2,
          icon: Icons.add,
          isLeading: true,
        ),
        bottomNavigationBar: myBottomNavigationBar(),
        body: Center(
            child: Container(
          color: MyColors.secondColor,
          child: Center(),
        )));
  }
}

Padding newMethod2() {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Home",
          style: MyTexts.title2,
        ),
        Icon(
          Icons.add,
          color: MyColors.IconColor,
          size: 40,
        )
      ],
    ),
  );
}

Padding newWidget() {
  return Padding(
    padding: const EdgeInsets.only(top: 24),
    child: Container(
      width: 343,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: MyColors.firstColorLight),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Used electricity",
              style: MyTexts.homePageUsed,
            ),
            Text(
              "100.5 Kwh of 200 Kwh",
              style: MyTexts.homePageCenter,
            ),
            Container(
              alignment: Alignment.center,
              width: 135,
              height: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: MyColors.WhiteColor),
              child: Text(
                "View Detail",
                style: MyTexts.subtitle,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
