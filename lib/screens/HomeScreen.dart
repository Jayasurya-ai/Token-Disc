import 'package:flutter/material.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tokendisc/screens/CrptyFiftyScreen.dart';
// ignore_for_file: prefer_const_constructors

bool firstbuttoncolor = true;
List id = [1, 2];
CarouselController carouselController = CarouselController();

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final searchcoin = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(height: height),
            TextScroll(
              ' |   BTC +38,890.04   |    DC +10.98   |  ETH +2860.97  |   XRP +0.6178',
              mode: TextScrollMode.endless,
              delayBefore: Duration(milliseconds: 1000),
              style: TextStyle(color: Colors.teal, fontSize: 18),
              textAlign: TextAlign.right,
              selectable: true,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 60,
                // padding: EdgeInsets.fromLTRB(5, 5, 5, 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), boxShadow: []),
                child: Card(
                  elevation: 1,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Search coin pairs",
                        prefixIcon: Icon(Icons.search)),
                    controller: searchcoin,
                  ),
                ),
              ),
            ),
            Crypty(height: height),
            Favorites(searchcoin: searchcoin),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RawMaterialButton(
                  elevation: 5,
                  fillColor: firstbuttoncolor ? Colors.green : Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  onPressed: () {
                    setState(() {
                      firstbuttoncolor = !firstbuttoncolor;
                      carouselController.previousPage();
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 38, right: 38),
                    child: Text("TOP GAINERS"),
                  ),
                ),
                RawMaterialButton(
                  elevation: 5,
                  fillColor: firstbuttoncolor ? Colors.white : Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  onPressed: () {
                    setState(() {
                      firstbuttoncolor = !firstbuttoncolor;
                      carouselController.nextPage();
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 38, right: 38),
                    child: Text("TOP LOSERS"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            CarouselSlider(
              carouselController: carouselController, // Give the controller
              options: CarouselOptions(
                  viewportFraction: 1.0, autoPlay: false, height: height * 0.5),
              items: id.map((i) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: i == 1 ? TopGainers() : TopLosers(),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class TopLosers extends StatelessWidget {
  const TopLosers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("| DAY",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff30303A))),
                    Text("| VALUE",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff30303A))),
                    Text("| CHG (%)",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff30303A))),
                  ],
                ),
              ),
              Divider(
                height: 2,
                thickness: 2,
                color: Color(0xff30303A),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("1INCH",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff30303A))),
                    Text("-95.645",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.red)),
                    Container(
                      width: 80,
                      height: 40,
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_downward, color: Colors.white),
                            Text("1.03%",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Divider(
                  thickness: 1,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("ACH",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff30303A))),
                    Text("-66.4000",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.red)),
                    Container(
                      width: 80,
                      height: 40,
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_downward, color: Colors.white),
                            Text("1.03%",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Divider(
                  thickness: 1,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("ACH",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff30303A))),
                    Text("-66.4000",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.red)),
                    Container(
                      width: 80,
                      height: 40,
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_downward, color: Colors.white),
                            Text("1.03%",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Divider(
                  thickness: 1,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("ACH",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff30303A))),
                    Text("-66.4000",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.red)),
                    Container(
                      width: 80,
                      height: 40,
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_downward, color: Colors.white),
                            Text("1.03%",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class TopGainers extends StatelessWidget {
  const TopGainers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("| DAY",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff30303A))),
                    Text("| VALUE",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff30303A))),
                    Text("| CHG (%)",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff30303A))),
                  ],
                ),
              ),
              Divider(
                height: 2,
                thickness: 2,
                color: Color(0xff30303A),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("1INCH",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff30303A))),
                    Text("+95.645",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                    Container(
                      width: 80,
                      height: 40,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_upward, color: Colors.white),
                            Text("1.03%",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff30303A))),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Divider(
                  thickness: 1,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("ACH",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff30303A))),
                    Text("+66.4000",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                    Container(
                      width: 80,
                      height: 40,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_upward, color: Colors.white),
                            Text("1.03%",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff30303A))),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Divider(
                  thickness: 1,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("ACH",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff30303A))),
                    Text("+66.4000",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                    Container(
                      width: 80,
                      height: 40,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_upward, color: Colors.white),
                            Text("1.03%",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff30303A))),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Divider(
                  thickness: 1,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("ACH",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff30303A))),
                    Text("+66.4000",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                    Container(
                      width: 80,
                      height: 40,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_upward, color: Colors.white),
                            Text("1.03%",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff30303A))),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

// class OtherCoins extends StatelessWidget {
//   const OtherCoins({
//     Key? key,
//     required this.height,
//   }) : super(key: key);

//   final double height;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: ClipRRect(
//         child: Container(
//           height: height * 0.15,
//           color: Colors.white,
//           child: Card(
//               elevation: 1,
//               color: Colors.white,
//               shape: RoundedRectangleBorder(),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("DC /USDT",
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xff30303A))),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text("14963.02 ₹",
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xff30303A))),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text("+2.14 %",
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.green)),
//                       ],
//                     ),
//                   ),
//                   Container(
//                       height: height * 0.08,
//                       width: 2,
//                       color: Color(0xff30303A)),
//                   Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("BTC /USDT",
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xff30303A))),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text("14963.02 ₹",
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xff30303A))),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text("+2.14 %",
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.green)),
//                       ],
//                     ),
//                   ),
//                   Container(
//                       height: height * 0.08,
//                       width: 2,
//                       color: Color(0xff30303A)),
//                   Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("ETH/USDT",
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xff30303A))),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text("14963.02 ₹",
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xff30303A))),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text("+2.14 %",
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.green)),
//                       ],
//                     ),
//                   ),
//                 ],
//               )),
//         ),
//       ),
//     );
//   }
// }

class Favorites extends StatelessWidget {
  const Favorites({
    Key? key,
    required this.searchcoin,
  }) : super(key: key);

  final TextEditingController searchcoin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Name",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Text(
                "Price",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Text(
                "Change",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
        Card(
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " DC",
                  style: TextStyle(color: Color(0xff2C4657), fontSize: 16),
                ),
                Text(
                  "          700.23 ₹",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                Container(
                  height: 35,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("+10.15",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Card(
        //   elevation: 1,
        //   child: Padding(
        //     padding: const EdgeInsets.all(10.0),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Text(
        //           " 1 INCH",
        //           style: TextStyle(color: Color(0xff2C4657), fontSize: 16),
        //         ),
        //         Text(
        //           "  200.23 ₹",
        //           style: TextStyle(color: Colors.green, fontSize: 15),
        //         ),
        //         Container(
        //           height: 35,
        //           color: Colors.green,
        //           child: Padding(
        //             padding: const EdgeInsets.all(10.0),
        //             child: Text("+10.15",
        //                 style: TextStyle(color: Colors.white, fontSize: 15)),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        Card(
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " BTC",
                  style: TextStyle(color: Color(0xff2C4657), fontSize: 16),
                ),
                Text(
                  "     500.23 ₹",
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                Container(
                  height: 35,
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("-10.15",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " ETH",
                  style: TextStyle(color: Color(0xff2C4657), fontSize: 16),
                ),
                Text(
                  "     300.23 ₹",
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                Container(
                  height: 35,
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("-10.15",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Crypty extends StatelessWidget {
  const Crypty({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CrptyFiftyScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: height * 0.10,
            color: Colors.white,
            child: Card(
                elevation: 2,
                color: Color(0xff2C4657),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text("  INDEX",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("| CRYPTY 50 ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("1498.02 ₹",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("+9.123 %",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green)),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: height * 0.12,
          color: Color(0xff2C4657),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 50, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Center(
                    child: Text(
                      "TOKEN DISC",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          fontFamily: "Montserrat",
                          color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.account_balance_wallet,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 25,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.white,
          thickness: 1,
        )
      ],
    );
  }
}
