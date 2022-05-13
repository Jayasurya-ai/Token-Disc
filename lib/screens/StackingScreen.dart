import 'package:flutter/material.dart';

class StackingScreen extends StatefulWidget {
  const StackingScreen({Key? key}) : super(key: key);

  @override
  State<StackingScreen> createState() => _StackingScreenState();
}

class _StackingScreenState extends State<StackingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [Image.asset("images/stacking.jpeg")],
        ));
  }
}
