import 'package:flutter/material.dart';

class DiskFundScreen extends StatefulWidget {
  const DiskFundScreen({Key? key}) : super(key: key);

  @override
  State<DiskFundScreen> createState() => _DiskFundScreenState();
}

class _DiskFundScreenState extends State<DiskFundScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/icon.jpg"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Text(
                            "PLATINUM",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff2C4657),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RawMaterialButton(
                            onPressed: () {},
                            fillColor: Colors.grey[200],
                            child: Text("Accumulated"),
                          ),
                          RawMaterialButton(
                            onPressed: () {},
                            fillColor: Colors.grey[200],
                            child: Text("Systamatic"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.amber,
                shape: RoundedRectangleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Text(
                            "GOLD",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff2C4657),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RawMaterialButton(
                            onPressed: () {},
                            fillColor: Colors.grey[200],
                            child: Text("Accumulated"),
                          ),
                          RawMaterialButton(
                            onPressed: () {},
                            fillColor: Colors.grey[200],
                            child: Text("Systamatic"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey,
                shape: RoundedRectangleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Center(
                          child: Text(
                            "SILVER",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff2C4657),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RawMaterialButton(
                            onPressed: () {},
                            fillColor: Colors.grey[200],
                            child: Text("Accumulated"),
                          ),
                          RawMaterialButton(
                            onPressed: () {},
                            fillColor: Colors.grey[200],
                            child: Text("Systamatic"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
