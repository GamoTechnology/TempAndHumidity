import 'package:flutter/material.dart';
import 'package:temp_and_humidity/const/my_colors.dart';

AppBar myAppBar() {
  return AppBar(
    shadowColor: MyColors.WhiteColor,
    title: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Home",
            style: TextStyle(color: MyColors.firstColor),
          ),
          Icon(
            Icons.add,
            color: MyColors.firstColor,
            size: 40,
          )
        ],
      ),
    ),
    backgroundColor: MyColors.WhiteColor,
  );
}

BottomNavigationBar myBottomNavigationBar() {
  return BottomNavigationBar(
    backgroundColor: MyColors.WhiteColor,
    type: BottomNavigationBarType.fixed,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home, color: MyColors.firstColor),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.school,
          color: MyColors.firstColor,
        ),
        label: 'School',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings, color: MyColors.firstColor),
        label: 'Settings',
      ),
    ],
    selectedItemColor: MyColors.firstColor,
    onTap: (int) {},
  );
}
