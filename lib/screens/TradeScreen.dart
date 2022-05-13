import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';

bool firstbuttoncolor = true;
num defaultValue = 32455;
double value = 10;
bool? _isChecked = true;

// ignore_for_file: prefer_const_constructors

class TradeScreen extends StatefulWidget {
  const TradeScreen({Key? key}) : super(key: key);

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  List<String> profilefor = ['BTC', 'ETH', '1 INCH', 'DC', 'LTC'];
  List<String> profileto = ['BTC', 'ETH', '1 INCH', 'DC', 'LTC'];
  List<String> limit = ['20x', '40x', '80x', '100x'];
  List<String> lim = ['Cross', 'Isolated'];
  List<String> binlimit = ['Limit', 'Market', 'Stop Limit'];

  List<String> futurelimit = [
    'Limit',
    'Post Only',
    'Market',
    'Stop Limit',
    'Stop Market',
    'Trailing Stop',
    'Twap'
  ];

  String _currText = '';

  List<String> text = ["TP/SL", "Reduce Only"];

  late String selectedProfile = "";
  late String unselectedProfile = "";
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
                    "TRADE",
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
                    text: "CONVERT",
                  ),
                  Tab(
                    text: "SPOT",
                  ),
                  Tab(text: "FUTURES"),
                  Tab(
                    text: "OPTIONS",
                  ),
                  // Tab(
                  //   text: "P2P",
                  // )
                ],
              ),
            ),
            body: TabBarView(
              
              children: [
              convert(),
              spot(),
              Futures(),
              Options(),
              // Scaffold(backgroundColor: Colors.red)
            ])));
  }

  DefaultTabController Options() {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            height: 110,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TabBar(
                    isScrollable: true,
                    labelColor: Colors.white,
                    unselectedLabelColor: Color(0xff2C4657),
                    indicator: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(5), // Creates border
                        color: Color(0xff2C4657)),
                    tabs: [
                      Text(
                        "5m",
                      ),
                      Text(
                        "10m",
                      ),
                      Text(
                        "30m",
                      ),
                      Text(
                        "1h",
                      ),
                      Text(
                        "4h",
                      ),
                      Text(
                        "8h",
                      ),
                      Text(
                        "12h",
                      ),
                      Text(
                        "1D",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(children: <Widget>[
          Scaffold(
            body: Column(
              children: [
                Image.asset("images/graph.jpeg"),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Buy",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff2C4657)),
                      ),
                      Text("Avbl -- USDT"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RawMaterialButton(
                      fillColor: Colors.red,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Call"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.green,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Put"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.amber,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Val"),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Positions", style: TextStyle(fontSize: 16)),
                          Container(
                            width: 25,
                            height: 3,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      Text("History", style: TextStyle(fontSize: 16)),
                      Text("Discover", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Scaffold(
            body: Column(
              children: [
                Image.asset("images/graph.jpeg"),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Buy",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff2C4657)),
                      ),
                      Text("Avbl -- USDT"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RawMaterialButton(
                      fillColor: Colors.red,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Call"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.green,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Put"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.amber,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Val"),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Positions", style: TextStyle(fontSize: 16)),
                          Container(
                            width: 25,
                            height: 3,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      Text("History", style: TextStyle(fontSize: 16)),
                      Text("Discover", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Scaffold(
            body: Column(
              children: [
                Image.asset("images/graph.jpeg"),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Buy",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff2C4657)),
                      ),
                      Text("Avbl -- USDT"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RawMaterialButton(
                      fillColor: Colors.red,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Call"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.green,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Put"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.amber,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Val"),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Positions", style: TextStyle(fontSize: 16)),
                          Container(
                            width: 25,
                            height: 3,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      Text("History", style: TextStyle(fontSize: 16)),
                      Text("Discover", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Scaffold(
            body: Column(
              children: [
                Image.asset("images/graph.jpeg"),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Buy",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff2C4657)),
                      ),
                      Text("Avbl -- USDT"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RawMaterialButton(
                      fillColor: Colors.red,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Call"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.green,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Put"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.amber,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Val"),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Positions", style: TextStyle(fontSize: 16)),
                          Container(
                            width: 25,
                            height: 3,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      Text("History", style: TextStyle(fontSize: 16)),
                      Text("Discover", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Scaffold(
            body: Column(
              children: [
                Image.asset("images/graph.jpeg"),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Buy",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff2C4657)),
                      ),
                      Text("Avbl -- USDT"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RawMaterialButton(
                      fillColor: Colors.red,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Call"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.green,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Put"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.amber,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Val"),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Positions", style: TextStyle(fontSize: 16)),
                          Container(
                            width: 25,
                            height: 3,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      Text("History", style: TextStyle(fontSize: 16)),
                      Text("Discover", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Scaffold(
            body: Column(
              children: [
                Image.asset("images/graph.jpeg"),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Buy",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff2C4657)),
                      ),
                      Text("Avbl -- USDT"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RawMaterialButton(
                      fillColor: Colors.red,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Call"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.green,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Put"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.amber,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Val"),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Positions", style: TextStyle(fontSize: 16)),
                          Container(
                            width: 25,
                            height: 3,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      Text("History", style: TextStyle(fontSize: 16)),
                      Text("Discover", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Scaffold(
            body: Column(
              children: [
                Image.asset("images/graph.jpeg"),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Buy",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff2C4657)),
                      ),
                      Text("Avbl -- USDT"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RawMaterialButton(
                      fillColor: Colors.red,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Call"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.green,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Put"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.amber,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Val"),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Positions", style: TextStyle(fontSize: 16)),
                          Container(
                            width: 25,
                            height: 3,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      Text("History", style: TextStyle(fontSize: 16)),
                      Text("Discover", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Scaffold(
            body: Column(
              children: [
                Image.asset("images/graph.jpeg"),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Buy",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff2C4657)),
                      ),
                      Text("Avbl -- USDT"),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xff2C4657)),
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.grey[200],
                            hintText: 'QTY (BTC)',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            // contentPadding:
                            //     const EdgeInsets.only(top: 5, bottom: 5),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RawMaterialButton(
                      fillColor: Colors.red,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Call"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.green,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Put"),
                    ),
                    RawMaterialButton(
                      fillColor: Colors.amber,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Val"),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Premium"),
                        SizedBox(height: 5),
                        Text("0.0000 USDT")
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Positions", style: TextStyle(fontSize: 16)),
                          Container(
                            width: 25,
                            height: 3,
                            color: Colors.grey,
                          )
                        ],
                      ),
                      Text("History", style: TextStyle(fontSize: 16)),
                      Text("Discover", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Scaffold Futures() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: DropdownButton(
                          isExpanded: true,
                          dropdownColor: Colors.grey,
                          hint: selectedProfile == ""
                              ? Text('Cross')
                              : Text(
                                  selectedProfile,
                                  style: TextStyle(color: Colors.blue),
                                ),
                          items: lim.map((profile) {
                            return DropdownMenuItem(
                              child: Text(profile),
                              value: profile,
                            );
                          }).toList(),
                          onChanged: (nValue) {
                            setState(() {
                              selectedProfile = nValue as String;
                            });
                          }),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: DropdownButton(
                          isExpanded: true,
                          hint: selectedProfile == ""
                              ? Text('20x')
                              : Text(
                                  selectedProfile,
                                  style: TextStyle(color: Colors.blue),
                                ),
                          items: limit.map((profile) {
                            return DropdownMenuItem(
                              child: Text(profile),
                              value: profile,
                            );
                          }).toList(),
                          onChanged: (nValue) {
                            setState(() {
                              selectedProfile = nValue as String;
                            });
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
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
                        // carouselController.previousPage();
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60),
                      child: Text("BUY"),
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
                        // carouselController.nextPage();
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60),
                      child: Text("SELL"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                child: DropdownButton(
                    isExpanded: true,
                    hint: unselectedProfile == ""
                        ? Text('Limit')
                        : Text(
                            unselectedProfile,
                            style: TextStyle(color: Colors.blue),
                          ),
                    items: futurelimit.map((profile) {
                      return DropdownMenuItem(
                        child: Text(profile),
                        value: profile,
                      );
                    }).toList(),
                    onChanged: (nValue) {
                      setState(() {
                        unselectedProfile = nValue as String;
                      });
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  autofocus: false,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 18.0, color: Color(0xff2C4657)),
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.remove),
                    suffixIcon: Icon(Icons.add),
                    fillColor: Colors.grey[200],
                    hintText: '    72000',
                    hintStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    // contentPadding:
                    //     const EdgeInsets.only(top: 5, bottom: 5),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  autofocus: false,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 18.0, color: Color(0xff2C4657)),
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.remove),
                    suffixIcon: Icon(Icons.add),
                    fillColor: Colors.grey[200],
                    hintText: '    Amount (BTC)',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    // contentPadding:
                    //     const EdgeInsets.only(top: 5, bottom: 5),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SliderTheme(
                  data: SliderThemeData(
                      thumbColor: Color(0xff2C4657),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 10)),
                  child: Slider(
                    value: value,
                    max: 100,
                    onChanged: (val) {
                      value = val;
                      setState(() {});
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                    height: 140.0,
                    child: Column(
                      children: text
                          .map((t) => CheckboxListTile(
                                title: Text(t),
                                value: _isChecked,
                                onChanged: (val) {
                                  setState(() {
                                    _isChecked = val;
                                    if (val == true) {
                                      _currText = t;
                                    }
                                  });
                                },
                              ))
                          .toList(),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  autofocus: false,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 18.0, color: Color(0xff2C4657)),
                  decoration: InputDecoration(
                    filled: true,
                    // prefixIcon: Icon(Icons.remove),
                    // suffixIcon: Icon(Icons.add),
                    fillColor: Colors.grey[200],
                    hintText: 'Total (USDT)',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    // contentPadding:
                    //     const EdgeInsets.only(top: 5, bottom: 5),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.7),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Avbl"), Text("0 USDT")],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: RawMaterialButton(
                  fillColor: firstbuttoncolor ? Colors.green : Colors.red,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      firstbuttoncolor ? "Buy/Long" : "Sell/Short",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Open Order's(0)"),
                    Icon(Icons.save, color: Colors.grey)
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[200],
              )

              // Center(
              //   child: ElegantNumberButton(
              //     buttonSizeWidth: 120,
              //     buttonSizeHeight: 40,
              //     initialValue: defaultValue,
              //     minValue: 0,
              //     maxValue: 100000,
              //     color: Colors.grey,
              //     step: 0.5,
              //     decimalPlaces: 0,
              //     onChanged: (value) {
              //       // get the latest value from here
              //       setState(() {
              //         defaultValue = value;
              //       });
              //     },
              //   ),
              // ),
              // Center(
              //   child: ElegantNumberButton(
              //     buttonSizeWidth: 120,
              //     buttonSizeHeight: 40,
              //     initialValue: defaultValue,
              //     minValue: 0,
              //     maxValue: 100000,
              //     color: Colors.grey,
              //     step: 0.5,
              //     decimalPlaces: 0,

              //     onChanged: (value) {
              //       // get the latest value from here
              //       setState(() {
              //         defaultValue = value;
              //       });
              //     },
              //   ),
              // ),
            ]),
          ],
        ),
      ),
    );
  }

  Scaffold convert() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Convert",
                style: TextStyle(fontSize: 20, color: Color(0xff2C4657)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "From",
              style: TextStyle(fontSize: 12, color: Color(0xff2C4657)),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: DropdownButton(
                        isExpanded: true,
                        hint: selectedProfile == ""
                            ? Text('BTC')
                            : Text(
                                selectedProfile,
                                style: TextStyle(color: Colors.blue),
                              ),
                        items: profilefor.map((profile) {
                          return DropdownMenuItem(
                            child: Text(profile),
                            value: profile,
                          );
                        }).toList(),
                        onChanged: (nValue) {
                          setState(() {
                            selectedProfile = nValue as String;
                          });
                        }),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 3,
                    child: TextField(
                      autofocus: false,
                      keyboardType: TextInputType.number,
                      style:
                          TextStyle(fontSize: 18.0, color: Color(0xff2C4657)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: '0-72000',
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 8.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.7),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "To",
              style: TextStyle(fontSize: 12, color: Color(0xff2C4657)),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: DropdownButton(
                        isExpanded: true,
                        hint: unselectedProfile == ""
                            ? Text('DC')
                            : Text(
                                unselectedProfile,
                                style: TextStyle(color: Colors.blue),
                              ),
                        items: profilefor.map((profile) {
                          return DropdownMenuItem(
                            child: Text(profile),
                            value: profile,
                          );
                        }).toList(),
                        onChanged: (nValue) {
                          setState(() {
                            unselectedProfile = nValue as String;
                          });
                        }),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 3,
                    child: TextField(
                      autofocus: false,
                      keyboardType: TextInputType.number,
                      style:
                          TextStyle(fontSize: 18.0, color: Color(0xff2C4657)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: '0-72000',
                        hintStyle: TextStyle(color: Colors.grey),
                        suffixText: "MAX",
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 8.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.7),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: RawMaterialButton(
                elevation: 1,
                fillColor: Color(0xff2C4657),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Preview Conversion",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Scaffold spot() {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "BTC/USDT",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff2C4657),
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      "-0.76",
                      style: TextStyle(fontSize: 12, color: Colors.red),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.graphic_eq, color: Color(0xff2C4657)),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.price_check)
                  ],
                ),
              ],
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
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
                      // carouselController.previousPage();
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60),
                    child: Text("BUY"),
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
                      // carouselController.nextPage();
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60),
                    child: Text("SELL"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
              child: DropdownButton(
                  isExpanded: true,
                  hint: unselectedProfile == ""
                      ? Text('Limit')
                      : Text(
                          unselectedProfile,
                          style: TextStyle(color: Colors.blue),
                        ),
                  items: binlimit.map((profile) {
                    return DropdownMenuItem(
                      child: Text(profile),
                      value: profile,
                    );
                  }).toList(),
                  onChanged: (nValue) {
                    setState(() {
                      unselectedProfile = nValue as String;
                    });
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                autofocus: false,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 18.0, color: Color(0xff2C4657)),
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(Icons.remove),
                  suffixIcon: Icon(Icons.add),
                  fillColor: Colors.grey[200],
                  hintText: '    72000',
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  // contentPadding:
                  //     const EdgeInsets.only(top: 5, bottom: 5),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.7),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                autofocus: false,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 18.0, color: Color(0xff2C4657)),
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(Icons.remove),
                  suffixIcon: Icon(Icons.add),
                  fillColor: Colors.grey[200],
                  hintText: '    Amount (BTC)',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  // contentPadding:
                  //     const EdgeInsets.only(top: 5, bottom: 5),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.7),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 40,
                      height: 10,
                      color: Colors.grey[200],
                    ),
                    Text("25%")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: 40,
                      height: 10,
                      color: Colors.grey[200],
                    ),
                    Text("50%")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: 40,
                      height: 10,
                      color: Colors.grey[200],
                    ),
                    Text("75%")
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: 40,
                      height: 10,
                      color: Colors.grey[200],
                    ),
                    Text("100%")
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                autofocus: false,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 18.0, color: Color(0xff2C4657)),
                decoration: InputDecoration(
                  filled: true,
                  // prefixIcon: Icon(Icons.remove),
                  // suffixIcon: Icon(Icons.add),
                  fillColor: Colors.grey[200],
                  hintText: 'Total (USDT)',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  // contentPadding:
                  //     const EdgeInsets.only(top: 5, bottom: 5),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.7),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Avbl"), Text("0 USDT")],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: RawMaterialButton(
                fillColor: firstbuttoncolor ? Colors.green : Colors.red,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    firstbuttoncolor ? "Buy BTC" : "Sell BTC",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Open Order's(0)"),
                  Icon(Icons.save, color: Colors.grey)
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[200],
            )

            // Center(
            //   child: ElegantNumberButton(
            //     buttonSizeWidth: 120,
            //     buttonSizeHeight: 40,
            //     initialValue: defaultValue,
            //     minValue: 0,
            //     maxValue: 100000,
            //     color: Colors.grey,
            //     step: 0.5,
            //     decimalPlaces: 0,
            //     onChanged: (value) {
            //       // get the latest value from here
            //       setState(() {
            //         defaultValue = value;
            //       });
            //     },
            //   ),
            // ),
            // Center(
            //   child: ElegantNumberButton(
            //     buttonSizeWidth: 120,
            //     buttonSizeHeight: 40,
            //     initialValue: defaultValue,
            //     minValue: 0,
            //     maxValue: 100000,
            //     color: Colors.grey,
            //     step: 0.5,
            //     decimalPlaces: 0,

            //     onChanged: (value) {
            //       // get the latest value from here
            //       setState(() {
            //         defaultValue = value;
            //       });
            //     },
            //   ),
            // ),
          ]),
          Column(
            children: [],
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
