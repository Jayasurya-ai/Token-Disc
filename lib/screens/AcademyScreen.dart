import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

class AcademyScreen extends StatefulWidget {
  const AcademyScreen({Key? key}) : super(key: key);

  @override
  State<AcademyScreen> createState() => _AcademyScreenState();
}

class _AcademyScreenState extends State<AcademyScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(child: Text("ACADEMY")),
          backgroundColor: Color(0xff2C4657),
          bottom: TabBar(
            unselectedLabelColor: Colors.white,
            labelColor: Colors.black,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Creates border
                color: Colors.white),
            tabs: [
              Tab(
                text: "DEMO",
              ),
              Tab(
                text: "BEGINNER'S \n      GUIDE",
              ),
              Tab(text: "INSTITUTE"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "images/demo.png",
                          height: 220,
                        ),
                      ),
                      Center(
                        child: Text(
                          "How to get started",
                          style: TextStyle(
                              color: Color(0xff2C4657),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "\u2022 Acquire top class knowledge through our institute and test your abilities through our demo account",
                          style: TextStyle(
                            color: Color(0xff2C4657),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "\u2022 You now have 1 Cr in your demo account which you can use to explore the variety of features on our app",
                          style: TextStyle(
                            color: Color(0xff2C4657),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "\u2022 You can start trading and investing right away! With this virtual money you can invest and trade across different asset classes like Disc fund , Savings pool , High yeild farming , Auto invest spot as well as derivative trading ",
                          style: TextStyle(
                            color: Color(0xff2C4657),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: SwipeButton.expand(
                          thumb: Icon(
                            Icons.double_arrow_rounded,
                            color: Colors.white,
                          ),
                          child: Text(
                            "Swipe to Get started",
                            style: TextStyle(
                              color: Color(0xff2C4657),
                            ),
                          ),
                          activeThumbColor: Color(0xff2C4657),
                          activeTrackColor: Colors.grey.shade300,
                          onSwipe: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Image.asset(
                        "images/booklove.png",
                        height: 200,
                      ),
                    ),
                    Center(
                      child: Text(
                        "CAPITAL",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff2C4657),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Image.asset(
                        "images/screenshot.jpeg",
                        height: 400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "This is the space that allows you to invest your idle cryptocurrencies into an array of different investment schemes that enables your crypto to work for you and earn passive interest. Different types of investment plans include:")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "DISC FUND",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff2C4657),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "This is the first ever low risk investment plan in the crypto space that allows you to deposit fiat currencies or use stable coins in exchange for disc fund token as your units which will be managed by our expert team of fund managers who on behalf of you diversify the fund into various crypto assets, active trading, staking, lending, index funds and other investment opportunities to reduce the risk and increase the rate of return.")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "SAVINGS POOL",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff2C4657),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "A savings Pool is a basic type of financial product that allows you to deposit your crypto and typically earn a modest amount of interest on a yearly, quarterly, monthly, weekly or daily basis")),
                    ),
                    Center(
                      child: Text(
                        "EXCHANGE",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff2C4657),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Image.asset(
                        "images/screenshot2.jpeg",
                        height: 400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Cryptocurrency exchange is a business that allows customers to trade  cryptocurrencies  or digital currencies for other assets, such as conventional fiat money or other digital currencies. Our exchange accept credit card payments, wire transfers or other forms of payment in exchange for digital currencies or cryptocurrencies.")),
                    ),
                  ],
                ),
              ),
            ),
            Scaffold(
                backgroundColor: Colors.white,
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Image.asset(
                      "images/edu.png",
                      height: 200,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Card(
                        color: Color(0xff2C4657),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 15, bottom: 15, right: 20),
                          child: Center(
                            child: Text(
                              "Level 1 ",
                              style: TextStyle(
                                fontSize: 25,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Card(
                        color: Color(0xff2C4657),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 15, bottom: 15, right: 20),
                          child: Center(
                            child: Text(
                              "Level 2 ",
                              style: TextStyle(
                                fontSize: 25,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Card(
                        color: Color(0xff2C4657),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 15, bottom: 15, right: 20),
                          child: Center(
                            child: Text(
                              "Final Level ",
                              style: TextStyle(
                                fontSize: 25,
                                letterSpacing: 2,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
