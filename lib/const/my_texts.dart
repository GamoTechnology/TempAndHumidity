import 'package:flutter/material.dart';
import 'package:temp_and_humidity/const/my_colors.dart';

class MyTexts {
  static const title = const TextStyle(
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w600,
      fontFamily: "Inter",
      fontStyle: FontStyle.normal,
      fontSize: 32.0);
  static const title2 = const TextStyle(
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w700,
      fontFamily: "OpenSans",
      fontStyle: FontStyle.normal,
      fontSize: 24.0);
  static const subtitle2 = const TextStyle(
      color: MyColors.firstColor,
      fontWeight: FontWeight.w600,
      fontFamily: "Inter",
      fontStyle: FontStyle.normal,
      fontSize: 20.0);
  static const subtitle = const TextStyle(
      color: MyColors.firstColor,
      fontWeight: FontWeight.w600,
      fontFamily: "Inter",
      fontStyle: FontStyle.normal,
      fontSize: 20.0);
}
