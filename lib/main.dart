import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokendisc/screens/AcademyScreen.dart';
import 'package:tokendisc/screens/CapitalScreen.dart';
import 'package:tokendisc/screens/DashBoardScreen.dart';
import 'package:tokendisc/screens/ExchangeScreen.dart';
import 'package:tokendisc/screens/HomeScreen.dart';
import 'package:tokendisc/screens/SampleScree.dart';
import 'package:tokendisc/screens/TradeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: SampleScree());
  }
}
