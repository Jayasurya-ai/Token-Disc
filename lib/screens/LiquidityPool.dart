import 'package:flutter/material.dart';

class LiquidityPool extends StatefulWidget {
  const LiquidityPool({Key? key}) : super(key: key);

  @override
  State<LiquidityPool> createState() => _LiquidityPoolState();
}

class _LiquidityPoolState extends State<LiquidityPool> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Image.asset(
              "images/pool.jpeg",
              height: height,
            )
          ],
        ));
  }
}
