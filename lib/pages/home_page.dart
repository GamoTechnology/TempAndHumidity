import 'package:flutter/material.dart';
import 'package:temp_and_humidity/const/my_colors.dart';
import 'package:temp_and_humidity/const/my_texts.dart';
import 'package:temp_and_humidity/main.dart';

import '../const/my_AppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      bottomNavigationBar: myBottomNavigationBar(),
      body: Container(
        color: MyColors.secondColor,
        child: Column(
          children: [
            //newMethod2(),
            newWidget(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [roomWidget(), roomWidget()],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [roomWidget(), roomWidget()],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
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

  Container roomWidget() {
    return Container(
      width: 165,
      height: 175,
      decoration: new BoxDecoration(
        color: MyColors.WhiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
                radius: 20,
                backgroundColor: MyColors.firstColor,
                child: Icon(
                  Icons.car_crash,
                  color: MyColors.WhiteColor,
                )),
          ),
          SizedBox(),
          SizedBox(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Living Room",
                  style: MyTexts.subtitle,
                ),
                Text(
                  "10 Devices",
                  style: MyTexts.subTitle3,
                )
              ],
            ),
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
}
