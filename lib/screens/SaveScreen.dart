import 'package:flutter/material.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({ Key? key }) : super(key: key);

  @override
  State<SaveScreen> createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Image.asset(
              "images/funds.jpeg",
              height: height,
            )
          ],
        ));
  }
}