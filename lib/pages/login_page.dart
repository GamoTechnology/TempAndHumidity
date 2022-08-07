import 'package:flutter/material.dart';
import 'package:temp_and_humidity/const/my_spaces.dart';

import '../const/my_colors.dart';
import '../const/my_texts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    MyColors.firstColor,
                    MyColors.secondColor,
                  ])),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MySpaces.empty,

                  //TODO: // InkWell(
                  //   customBorder: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(90)),
                  //   onTap: () {
                  //     print("sedat");
                  //   },
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: CircleAvatar(
                  //       radius: 50,
                  //       backgroundColor: Colors.red,
                  //       child: CircleAvatar(
                  //         backgroundColor: Colors.white,
                  //         radius: 30,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Placeholder(),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "...Welcome To...",
                      style: MyTexts.title,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: MyColors.secondColor,
                          ),
                        ),
                        Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xffffffff))),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20, right: 15),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_right,
                                size: 50,
                                color: MyColors.firstColor,
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
