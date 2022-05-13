import 'package:flutter/material.dart';
import 'package:tokendisc/screens/GraphScreen.dart';

class ExchangeScreen extends StatefulWidget {
  const ExchangeScreen({Key? key}) : super(key: key);

  @override
  State<ExchangeScreen> createState() => _ExchangeScreenState();
}

class _ExchangeScreenState extends State<ExchangeScreen> {
  final searchcoin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.change_circle),
              // SizedBox(
              //   width: 5,
              // ),
              Text(
                "EXCHANGE",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Color(0xff2C4657),
          bottom: TabBar(
            isScrollable: true,
            labelColor: Color(0xff2C4657),
            unselectedLabelColor: Colors.white,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Creates border
                color: Colors.white),
            tabs: [
              Tab(
                text: "FAVORITES",
              ),
              Tab(
                text: "BASKET",
              ),
              Tab(text: "MARKET"),
              Tab(
                text: "ZONE",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Favorites(searchcoin: searchcoin),
            Scaffold(
              floatingActionButton: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                  backgroundColor: Color(0xff2C4657)),
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        shape: RoundedRectangleBorder(),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "CRYPTY 50",
                                    style: TextStyle(
                                        color: Color(0xff2C4657),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.local_mall),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Min.Invst.Amt"),
                                      SizedBox(height: 10),
                                      Text("463576.0₹")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Return"),
                                      SizedBox(height: 10),
                                      Text(
                                        "+91.5",
                                        style: TextStyle(color: Colors.green),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("No. of Coins"),
                                      SizedBox(height: 10),
                                      Text("6")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Date of launch"),
                                      SizedBox(height: 10),
                                      Text(
                                        "22/03/2022",
                                        style: TextStyle(),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        shape: RoundedRectangleBorder(),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "DeFi",
                                    style: TextStyle(
                                        color: Color(0xff2C4657),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.local_mall),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Min.Invst.Amt"),
                                      SizedBox(height: 10),
                                      Text("463576.0₹")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Return"),
                                      SizedBox(height: 10),
                                      Text(
                                        "+91.5",
                                        style: TextStyle(color: Colors.green),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("No. of Coins"),
                                      SizedBox(height: 10),
                                      Text("6")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Date of launch"),
                                      SizedBox(height: 10),
                                      Text(
                                        "22/03/2022",
                                        style: TextStyle(),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        shape: RoundedRectangleBorder(),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "METAVERSE",
                                    style: TextStyle(
                                        color: Color(0xff2C4657),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.local_mall),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Min.Invst.Amt"),
                                      SizedBox(height: 10),
                                      Text("463576.0₹")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Return"),
                                      SizedBox(height: 10),
                                      Text(
                                        "+91.5",
                                        style: TextStyle(color: Colors.green),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("No. of Coins"),
                                      SizedBox(height: 10),
                                      Text("6")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Date of launch"),
                                      SizedBox(height: 10),
                                      Text(
                                        "22/03/2022",
                                        style: TextStyle(),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        shape: RoundedRectangleBorder(),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "POW",
                                    style: TextStyle(
                                        color: Color(0xff2C4657),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.local_mall),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Min.Invst.Amt"),
                                      SizedBox(height: 10),
                                      Text("463576.0₹")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Return"),
                                      SizedBox(height: 10),
                                      Text(
                                        "+91.5",
                                        style: TextStyle(color: Colors.green),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("No. of Coins"),
                                      SizedBox(height: 10),
                                      Text("6")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Date of launch"),
                                      SizedBox(height: 10),
                                      Text(
                                        "22/03/2022",
                                        style: TextStyle(),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        shape: RoundedRectangleBorder(),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "POS",
                                    style: TextStyle(
                                        color: Color(0xff2C4657),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.local_mall),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Min.Invst.Amt"),
                                      SizedBox(height: 10),
                                      Text("463576.0₹")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Return"),
                                      SizedBox(height: 10),
                                      Text(
                                        "+91.5",
                                        style: TextStyle(color: Colors.green),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("No. of Coins"),
                                      SizedBox(height: 10),
                                      Text("6")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Date of launch"),
                                      SizedBox(height: 10),
                                      Text(
                                        "22/03/2022",
                                        style: TextStyle(),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        shape: RoundedRectangleBorder(),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "LAYER 2",
                                    style: TextStyle(
                                        color: Color(0xff2C4657),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(Icons.local_mall),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Min.Invst.Amt"),
                                      SizedBox(height: 10),
                                      Text("463576.0₹")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Return"),
                                      SizedBox(height: 10),
                                      Text(
                                        "+91.5",
                                        style: TextStyle(color: Colors.green),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("No. of Coins"),
                                      SizedBox(height: 10),
                                      Text("6")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Date of launch"),
                                      SizedBox(height: 10),
                                      Text(
                                        "22/03/2022",
                                        style: TextStyle(),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            DefaultTabController(
              length: 3,
              child: new Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(kToolbarHeight),
                  child: Container(
                    height: 100,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: new TabBar(
                            labelColor: Colors.white,
                            unselectedLabelColor: Color(0xff2C4657),
                            indicator: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(5), // Creates border
                                color: Color(0xff2C4657)),
                            tabs: [
                              Text(
                                "BTC",
                              ),
                              new Text(
                                "USDT",
                              ),
                              Text(
                                "FIAT",
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                body: new TabBarView(
                  children: <Widget>[btc(), btc(), btc()],
                ),
              ),
            ),
            zones(),
          ],
        ),
      ),
    );
  }
}

class zones extends StatelessWidget {
  const zones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            height: 100,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: new TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Color(0xff2C4657),
                    indicator: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(5), // Creates border
                        color: Color(0xff2C4657)),
                    tabs: [
                      Text(
                        "All Zones",
                      ),
                      new Text(
                        "New Listing",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: new TabBarView(children: <Widget>[
          Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Text(
                        "Top Gainers",
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
                          "Innovation",
                          style:
                              TextStyle(color: Color(0xff2C4657), fontSize: 16),
                        ),
                        Text(
                          "BTC (+78.56%)",
                          style: TextStyle(color: Colors.green, fontSize: 15),
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
                          "DC Chain",
                          style:
                              TextStyle(color: Color(0xff2C4657), fontSize: 16),
                        ),
                        Text(
                          "EPN (+67.56)",
                          style: TextStyle(color: Colors.green, fontSize: 15),
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
                          "POW",
                          style:
                              TextStyle(color: Color(0xff2C4657), fontSize: 16),
                        ),
                        Text(
                          "Zen (+987.56",
                          style: TextStyle(color: Colors.green, fontSize: 15),
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
                          "FAN TOKEN",
                          style:
                              TextStyle(color: Color(0xff2C4657), fontSize: 16),
                        ),
                        Text(
                          "Eth (+9874.56%)",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Text(
                        "Last Price / Change ",
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "MOD",
                              style: TextStyle(
                                  color: Color(0xff2C4657), fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Mobile Coin",
                              style: TextStyle(
                                  color: Color(0xff2C4657), fontSize: 12),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "3.226",
                              style: TextStyle(
                                  color: Color(0xff2C4657), fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "+15.5%",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 12),
                            ),
                          ],
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ASTR",
                              style: TextStyle(
                                  color: Color(0xff2C4657), fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Astar",
                              style: TextStyle(
                                  color: Color(0xff2C4657), fontSize: 12),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "0.1372",
                              style: TextStyle(
                                  color: Color(0xff2C4657), fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "+3.96%",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 12),
                            ),
                          ],
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "GMT",
                              style: TextStyle(
                                  color: Color(0xff2C4657), fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Green metaverse",
                              style: TextStyle(
                                  color: Color(0xff2C4657), fontSize: 12),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "2.4545",
                              style: TextStyle(
                                  color: Color(0xff2C4657), fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "+4.98%",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 12),
                            ),
                          ],
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "KDA",
                              style: TextStyle(
                                  color: Color(0xff2C4657), fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Kadena",
                              style: TextStyle(
                                  color: Color(0xff2C4657), fontSize: 12),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "3.486",
                              style: TextStyle(
                                  color: Color(0xff2C4657), fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "+15.5%",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class btc extends StatelessWidget {
  const btc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => GraphScreen()));
        },
        child: Column(
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
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
                      " 1 INCH",
                      style: TextStyle(color: Color(0xff2C4657), fontSize: 16),
                    ),
                    Text(
                      "  200.23 ₹",
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    Container(
                      height: 35,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("+10.15",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
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
                      " 1 INCH",
                      style: TextStyle(color: Color(0xff2C4657), fontSize: 16),
                    ),
                    Text(
                      "  200.23 ₹",
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    Container(
                      height: 35,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("+10.15",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
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
                      " 1 INCH",
                      style: TextStyle(color: Color(0xff2C4657), fontSize: 16),
                    ),
                    Text(
                      "  200.23 ₹",
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    Container(
                      height: 35,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("+10.15",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
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
                      " 1 INCH",
                      style: TextStyle(color: Color(0xff2C4657), fontSize: 16),
                    ),
                    Text(
                      "  200.23 ₹",
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    Container(
                      height: 35,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("+10.15",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
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
                      " 1 INCH",
                      style: TextStyle(color: Color(0xff2C4657), fontSize: 16),
                    ),
                    Text(
                      "  200.23 ₹",
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    Container(
                      height: 35,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("+10.15",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                    ),
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

class Favorites extends StatelessWidget {
  const Favorites({
    Key? key,
    required this.searchcoin,
  }) : super(key: key);

  final TextEditingController searchcoin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), boxShadow: []),
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
          Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " 1 INCH",
                    style: TextStyle(color: Color(0xff2C4657), fontSize: 16),
                  ),
                  Text(
                    "  200.23 ₹",
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
      ),
    );
  }
}
