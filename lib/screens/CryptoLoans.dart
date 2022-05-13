import 'package:flutter/material.dart';

class CryptoLoans extends StatefulWidget {
  const CryptoLoans({Key? key}) : super(key: key);

  @override
  State<CryptoLoans> createState() => _CryptoLoansState();
}

class _CryptoLoansState extends State<CryptoLoans> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Image.asset(
              "images/cryptoloan.jpeg",
              height: height,
            )
          ],
        ));
  }
}
