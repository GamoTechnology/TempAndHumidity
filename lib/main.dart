import 'package:flutter/material.dart';
import 'package:temp_and_humidity/const/my_AppBar.dart';
import 'package:temp_and_humidity/pages/device_value_show.dart';
import 'package:temp_and_humidity/pages/home_page.dart';
import 'package:temp_and_humidity/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: DeviceValueShow(),
        ));
  }
}
