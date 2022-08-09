import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:temp_and_humidity/const/my_texts.dart';

import '../const/my_colors.dart';

class DeviceValueShow extends StatefulWidget {
  @override
  State<DeviceValueShow> createState() => _MyAppState();
}

class _MyAppState extends State<DeviceValueShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      bottomNavigationBar: myBottomNavigationBar(),
      body: Container(
        color: MyColors.secondColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Daily",
                      style: MyTexts.subtitle4,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Monthly",
                        style: MyTexts.subtitle2,
                      ),
                      height: 36,
                      width: 110,
                      margin: EdgeInsets.only(),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Text(
                      "Daily",
                      style: MyTexts.subtitle4,
                    ),
                  ],
                ),
                height: 45,
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                decoration: BoxDecoration(
                  color: MyColors.firstColorLight,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 8, top: 8),
                  child: Container(
                    height: 72,
                    width: 164,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 8, top: 8),
                  child: Container(
                    height: 72,
                    width: 164,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            Center(
                child: Container(
                    child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(
                    labelStyle: TextStyle(
                      color: MyColors.WhiteColor,
                    ),
                  ),
                  // Chart title

                  // Enable legend

                  // Enable tooltip
                  // tooltipBehavior: _tooltipBehavior,

                  series: <LineSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                        dataSource: <SalesData>[
                          SalesData('Jan', 35),
                          SalesData('Feb', 28),
                          SalesData('Mar', 34),
                          SalesData('Apr', 32),
                          SalesData('May', 40),
                          SalesData('Jul', 35),
                          SalesData('Aug', 28),
                          SalesData('Sep', 34),
                          SalesData('Oct', 32),
                          SalesData('Nov', 90)
                        ],
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        color: MyColors.firstColorLight,
                        // Enable data label
                        dataLabelSettings: DataLabelSettings(
                          isVisible: false,
                        ))
                  ]),
            ))),
            Container(
                width: 355,
                height: 100,
                decoration: new BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(10)))
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

AppBar myAppBar() {
  return AppBar(
    shadowColor: MyColors.WhiteColor,
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        "Device",
        style: MyTexts.title2,
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
