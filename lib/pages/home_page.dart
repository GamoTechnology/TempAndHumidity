import 'package:flutter/material.dart';
import 'package:temp_and_humidity/const/my_colors.dart';
import 'package:temp_and_humidity/const/my_texts.dart';
import 'package:temp_and_humidity/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0x80400800), Color(0xffA0E1DD)],
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        color: MyColors.IconColor,
                        size: 50,
                      ),
                      Text(
                        "Home",
                        style: MyTexts.title2,
                      ),
                      Icon(
                        Icons.add,
                        color: MyColors.IconColor,
                        size: 50,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Container(
                    width: 350,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: const Color(0x80189bfa),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            width: 135,
                            height: 36,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: MyColors.WhiteColor),
                            child: Text("View Detail",
                                style: MyTexts.subtitle,
                                textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
