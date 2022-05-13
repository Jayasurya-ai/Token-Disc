import 'package:flutter/material.dart';

import 'AcademyScreen.dart';
import 'CapitalScreen.dart';
import 'ExchangeScreen.dart';
import 'HomeScreen.dart';
import 'TradeScreen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int i = 2;
  var pages = [
    AcademyScreen(),
    CapitalScreen(),
    HomeScreen(),
    ExchangeScreen(),
    TradeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[i],
      bottomNavigationBar: new BottomNavigationBar(
        elevation: 20,
        backgroundColor: Color(0xff2C4657),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        iconSize: 25,
        selectedFontSize: 15,
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(
              Icons.school,
            ),
            label: "Academy",
          ),
          new BottomNavigationBarItem(
            icon: new Icon(
              Icons.savings,
            ),
            label: "Capital",
          ),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.donut_large,
              ),
              label: "Home"),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.change_circle), label: "Exchange"),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.query_stats,
              ),
              label: "Trade"),
        ],
        currentIndex: i,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            i = index;
          });
        },
      ),
    );
  }
}
