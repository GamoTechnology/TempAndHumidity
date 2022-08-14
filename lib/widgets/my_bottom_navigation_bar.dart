import 'package:flutter/material.dart';

import '../const/my_colors.dart';
import '../pages/device_value_show.dart';
import '../pages/home_page.dart';

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
