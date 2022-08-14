import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/my_colors.dart';
import '../const/my_texts.dart';

class myRoom extends StatelessWidget {
  const myRoom({
    Key? key,
    required this.title,
    required this.deviceCount,
    required this.icon,
  }) : super(key: key);

  final String title;
  final int deviceCount;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
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
                radius: 20, backgroundColor: MyColors.firstColor, child: icon),
          ),
          SizedBox(),
          SizedBox(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: MyTexts.subtitle,
                ),
                Text(
                  deviceCount.toString() + " Devices",
                  style: MyTexts.subTitle3,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
