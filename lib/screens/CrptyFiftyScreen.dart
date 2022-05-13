import 'package:flutter/material.dart';

class CrptyFiftyScreen extends StatefulWidget {
  const CrptyFiftyScreen({Key? key}) : super(key: key);

  @override
  State<CrptyFiftyScreen> createState() => _CrptyFiftyScreenState();
}

class _CrptyFiftyScreenState extends State<CrptyFiftyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff2C4657),
          title: Center(
            child: Text(
              "CRYPTY 50",
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "S.No",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("COIN", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("VALUE", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("CHANGE(%)",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("MCAP", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("1"),
                  Text("BTC"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("2"),
                  Text("ETH"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("3"),
                  Text("USDT"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("4"),
                  Text("DC"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("5"),
                  Text("XRP"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("6"),
                  Text("SOL"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("7"),
                  Text("ADA"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("8"),
                  Text("UNA"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("9"),
                  Text("USDUST"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("10"),
                  Text("USDDC"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("11"),
                  Text("DOGE"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("12"),
                  Text("AVAX"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("13"),
                  Text("DOT"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("14"),
                  Text("SHIB"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("15"),
                  Text("WBTC"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("16"),
                  Text("TRONTRX"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("17"),
                  Text("DAI"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("18"),
                  Text("MATIC"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("19"),
                  Text("NEAR"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("20"),
                  Text("CRO"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("21"),
                  Text("LTC"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("22"),
                  Text("BCH"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("23"),
                  Text("ALGO"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("24"),
                  Text("UNI"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("25"),
                  Text("INK"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("26"),
                  Text("FTT"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("27"),
                  Text("ATOM"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("28"),
                  Text("XLN"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("29"),
                  Text("XMR"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("30"),
                  Text("ETC"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("31"),
                  Text("APE"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("32"),
                  Text("VET"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("33"),
                  Text("ICP"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("34"),
                  Text("HBAR"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("35"),
                  Text("FIL"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("36"),
                  Text("EGLD"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("37"),
                  Text("MANA"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("38"),
                  Text("SAND"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("39"),
                  Text("XTZ"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("40"),
                  Text("PHETA"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("41"),
                  Text("CAKE"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("42"),
                  Text("RUNE"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("43"),
                  Text("EOSEOS"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("44"),
                  Text("AAVE"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("45"),
                  Text("AXS"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("46"),
                  Text("KLAY"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("47"),
                  Text("FTM"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("48"),
                  Text("HNT"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("49"),
                  Text("CIVR"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.grey[200],
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("50"),
                  Text("WOOD"),
                  Text("34.65"),
                  Text("+3.64"),
                  Text("31.36")
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ]),
        ),
      ),
    );
  }
}
