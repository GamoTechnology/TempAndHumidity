// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:temp_and_humidity/const/my_colors.dart';
import 'package:temp_and_humidity/pages/device_value_show.dart';
import 'package:temp_and_humidity/pages/home_page.dart';

import 'my_texts.dart';

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

class myBottomNavigationBar extends StatefulWidget {
  myBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<myBottomNavigationBar> createState() => _myBottomNavigationBarState();
}

class _myBottomNavigationBarState extends State<myBottomNavigationBar> {
  int sekme = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: MyColors.WhiteColor,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: MyColors.firstColor),
          label: 'Ana Sayfa',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.school,
            color: MyColors.firstColor,
          ),
          label: 'Detaylar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: MyColors.firstColor),
          label: 'Ayarlar',
        ),
      ],
      selectedItemColor: MyColors.firstColor,
      onTap: (int i) {
        switch (i) {
          case 0:
            setState(() {
              sekme = 0;
              HomePage();
            });
            break;
          case 1:
            setState(() {
              sekme = 1;
              DeviceValueShow();
            });
            break;
          case 2:
            break;
        }
      },
    );
  }
}
