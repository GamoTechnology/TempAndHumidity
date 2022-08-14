// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:temp_and_humidity/const/my_colors.dart';
import 'package:temp_and_humidity/pages/device_value_show.dart';
import 'package:temp_and_humidity/pages/home_page.dart';

class myAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);
  const myAppBar({
    Key? key,
    required this.title,
    this.centerTitle,
    this.textColorStyle,
    this.icon,
    this.isLeading,
  }) : super(key: key);
  final String title;
  final bool? centerTitle;
  final TextStyle? textColorStyle;
  final IconData? icon;
  final bool? isLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: MyColors.WhiteColor,
      centerTitle: centerTitle,
      leading: isLeading == true ? SizedBox() : null,
      title: Center(
          child: Text(
        title,
        textAlign: TextAlign.center,
        style: textColorStyle,
      )),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Icon(
            icon,
            color: MyColors.firstColor,
            size: 40,
          ),
        )
      ],
      backgroundColor: MyColors.WhiteColor,
    );
  }
}
