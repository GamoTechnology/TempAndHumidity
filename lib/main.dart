import 'package:flutter/material.dart';
import 'package:temp_and_humidity/const/my_colors.dart';
import 'package:temp_and_humidity/const/my_texts.dart';
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
      home: LoginPage(),
    );
  }
}
