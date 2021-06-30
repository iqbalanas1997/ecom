import 'package:ecom/like.dart';
import 'package:ecom/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // @override
  // void initState() {
  //   super.initState();
  //   loadState();
  // }

  // loadState() async {
  //   var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
  //   // print(catalogJson);
  //   var decodeData = jsonDecode(catalogJson);
  //   print(decodeData);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:

            // Column(
            //   children: [
            //     Row(
            //       children: [
            //         Container(
            //           width: 180,
            //           height: 40,
            //           color: Colors.white,
            //           padding: EdgeInsets.only(left: 20),
            //           child: Text(
            //             "Items",
            //             style: TextStyle(
            //               fontWeight: FontWeight.bold,
            //               fontSize: 30,
            //             ),
            //           ),
            //         ),
            //         Container(
            //           width: 180,
            //           height: 50,
            //           color: Colors.white,
            //           alignment: Alignment.centerRight,
            //           child: Text(
            //             "View More",
            //             style: TextStyle(
            //               fontWeight: FontWeight.bold,
            //               fontSize: 20,
            //               color: Colors.blue,
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),

            GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        //Padding(padding: EdgeInsets.only(bottom: 20)),
        //iphon12
        GestureDetector(
          onTap: () {
            print("Yes");
          },
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
            elevation: 10.0,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.network(
                        "https://www.factmalta.com/wp-content/uploads/2019/04/apple-iphone-xs-2019_5cb8a25e2aa49.jpeg",
                        height: 130,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 5, right: 5),
                      color: Colors.white,
                      height: 50,
                      width: 160,
                      child: Stack(
                        children: [
                          Text(
                            "IPHONE 12",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assets/5str.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Text("5.0 (23 Reviews"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),

        //Note 20 ultra
        GestureDetector(
          onTap: () {
            print("Yes");
          },
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
            elevation: 10.0,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        "assets/noteultra.jpg",
                        height: 130,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 5, right: 5),
                      color: Colors.white,
                      height: 50,
                      width: 160,
                      child: Stack(
                        children: [
                          Text(
                            "Note 20 Ultra",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assets/5str.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Text("5.0 (23 Reviews"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),

        //Macbook Air
        GestureDetector(
          onTap: () {
            print("Yes");
          },
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
            elevation: 10.0,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        "assets/makebookair.jpg",
                        height: 130,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 5, right: 5),
                      color: Colors.white,
                      height: 50,
                      width: 160,
                      child: Stack(
                        children: [
                          Text(
                            "Macbook Air",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assets/5str.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Text("5.0 (23 Reviews"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),

        //Macbook Pro
        GestureDetector(
          onTap: () {
            print("Yes");
          },
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
            elevation: 10.0,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        "assets/makebookpro.jpg",
                        height: 130,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 5, right: 5),
                      color: Colors.white,
                      height: 50,
                      width: 160,
                      child: Stack(
                        children: [
                          Text(
                            "Macbook Pro",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assets/5str.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Text("5.0 (23 Reviews"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),

        //Gaming PC
        GestureDetector(
          onTap: () {
            print("Yes");
          },
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
            elevation: 10.0,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        "assets/gamingpc.jpeg",
                        height: 130,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 5, right: 5),
                      color: Colors.white,
                      height: 50,
                      width: 160,
                      child: Stack(
                        children: [
                          Text(
                            "Gaming PC",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assets/5str.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Text("5.0 (23 Reviews"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),

        //Backlit
        GestureDetector(
          onTap: () {
            print("Yes");
          },
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
            elevation: 10.0,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        "assets/backlit.jpg",
                        height: 130,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 5, right: 5),
                      color: Colors.white,
                      height: 50,
                      width: 160,
                      child: Stack(
                        children: [
                          Text(
                            "Backlit",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assets/5str.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Text("5.0 (23 Reviews"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),

        // Mercedes
        GestureDetector(
          onTap: () {
            print("Yes");
          },
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
            elevation: 10.0,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        "assets/mercedes.jpg",
                        height: 130,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 5, right: 5),
                      color: Colors.white,
                      height: 50,
                      width: 160,
                      child: Stack(
                        children: [
                          Text(
                            "Mercedes",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assets/5str.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Text("5.0 (23 Reviews"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),

// Mutton
        GestureDetector(
          onTap: () {
            print("Yes");
          },
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
            elevation: 10.0,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        "assets/mutton.jpg",
                        height: 130,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 5, right: 5),
                      color: Colors.white,
                      height: 50,
                      width: 160,
                      child: Stack(
                        children: [
                          Text(
                            "Mutton",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assets/5str.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Text("5.0 (23 Reviews"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),

        // Roadster
        GestureDetector(
          onTap: () {
            print("Yes");
          },
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
            elevation: 10.0,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        "assets/roadster.jpg",
                        height: 130,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 5, right: 5),
                      color: Colors.white,
                      height: 50,
                      width: 160,
                      child: Stack(
                        children: [
                          Text(
                            "Roadster",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assets/5str.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Text("5.0 (23 Reviews"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),

        // Royal Field
        GestureDetector(
          onTap: () {
            print("Yes");
          },
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
            elevation: 10.0,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        "assets/royalfield.jpg",
                        height: 130,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 5, right: 5),
                      color: Colors.white,
                      height: 50,
                      width: 160,
                      child: Stack(
                        children: [
                          Text(
                            "Royal Field",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assets/5str.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Text("5.0 (23 Reviews"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),

        // Wireless
        GestureDetector(
          onTap: () {
            print("Yes");
          },
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
            elevation: 10.0,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        "assets/wireless.jpg",
                        height: 130,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 5, right: 5),
                      color: Colors.white,
                      height: 50,
                      width: 160,
                      child: Stack(
                        children: [
                          Text(
                            "Wireless",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assets/5str.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Text("5.0 (23 Reviews"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),

        // Tab
        GestureDetector(
          onTap: () {
            print("Yes");
          },
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
            elevation: 10.0,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        "assets/tab.jpg",
                        height: 130,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 5, right: 5),
                      color: Colors.white,
                      height: 50,
                      width: 160,
                      child: Stack(
                        children: [
                          Text(
                            "Tab",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assets/5str.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Text("5.0 (23 Reviews"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),

        // Samsung
        GestureDetector(
          onTap: () {
            print("Yes");
          },
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
            elevation: 10.0,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        "assets/cam.jpg",
                        height: 130,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 5, right: 5),
                      color: Colors.white,
                      height: 50,
                      width: 160,
                      child: Stack(
                        children: [
                          Text(
                            "Samsung",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    "assets/5str.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Text("5.0 (23 Reviews"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ],
    )

        // ],
        //  ),

        );
  }
}
