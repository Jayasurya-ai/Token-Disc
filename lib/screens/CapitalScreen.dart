import 'package:flutter/material.dart';
import 'package:tokendisc/screens/CryptoLoans.dart';
import 'package:tokendisc/screens/DiskFundScreen.dart';
import 'package:tokendisc/screens/LiquidityPool.dart';
import 'package:tokendisc/screens/SaveScreen.dart';
import 'package:tokendisc/screens/StackingScreen.dart';

class CapitalScreen extends StatefulWidget {
  const CapitalScreen({Key? key}) : super(key: key);

  @override
  State<CapitalScreen> createState() => _CapitalScreenState();
}

class _CapitalScreenState extends State<CapitalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff2C4657),
        title: Center(
          child: Text(
            "CAPITAL",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "images/savings.png",
              height: 200,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DiskFundScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "images/disc.png",
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Disc Fund",
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2C4657),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Color(0xff2C4657),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SaveScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "images/save-money.png",
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Savings Pool",
                            style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2C4657),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Color(0xff2C4657),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LiquidityPool()));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "images/coins.png",
                          height: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Liquidity Pool",
                            style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2C4657),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Color(0xff2C4657),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StackingScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "images/lock.png",
                          height: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Text(
                            "Staking",
                            style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2C4657),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Color(0xff2C4657),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CryptoLoans()));
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "images/lending.png",
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Crypto Loans",
                            style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2C4657),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Color(0xff2C4657),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
