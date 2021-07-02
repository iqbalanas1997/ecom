import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        body: new Column(
          
      children: <Widget>[
        Row(
          children: [
            Container(
              width: 180,
              height: 40,
              color: Colors.white,
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Items",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              width: 180,
              height: 50,
              color: Colors.white,
              alignment: Alignment.centerRight,
              child: Text(
                "View More",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),

        Container(
            child: CarouselSlider(
          options: CarouselOptions(
            height: 160.0,
            autoPlay: true,
            aspectRatio: 16 / 9,
            enableInfiniteScroll: true,
            //autoPlayInterval: Duration(seconds: 2),
            reverse: false,
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
          ),
          items: [
            "assets/tab.jpg",
            "assets/cam.jpg",
            "assets/roadster.jpg",
            "assets/royalfield.jpg",
            "assets/mutton.jpg",
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 150,
                              width: 270,
                              color: Colors.blue,
                              child: Image.asset(
                                "$i",
                                height: 150,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                        // Row(
                        //   children: [
                        //     Container(
                        //       height: 45,
                        //       width: 270,
                        //       color: Colors.red,
                        //     )
                        //   ],
                        // )
                      ],
                    ));
              },
            );
          }).toList(),
        )),

        SizedBox(
          height: 5,
        ),
        Container(
            height: 30,
            width: 400,
            child: Text(
              "More Catagories",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),

        // Container(
        //     height: 60,
        //     width: 400,
        //     color: Colors.blue,
        //     child: SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       child: Column(
        //         children: [
        //           Row(
        //             children: [
        //               Container(
        //                 height: 50,
        //                 width: 150,
        //                 color: Colors.amber,
        //                 child: Text("Iqbal Anas"),
        //               ),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Container(
        //                 height: 50,
        //                 width: 150,
        //                 color: Colors.black,
        //                 child: Text(
        //                   "Cloths",
        //                   style: TextStyle(fontSize: 20),
        //                 ),
        //               ),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Container(
        //                 height: 50,
        //                 width: 150,
        //                 color: Colors.amber,
        //                 child: Text(
        //                   "Cloths",
        //                   style: TextStyle(fontSize: 20),
        //                 ),
        //               ),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //               Container(
        //                 height: 50,
        //                 width: 150,
        //                 color: Colors.amber,
        //                 child: Text(
        //                   "Cloths",
        //                   style: TextStyle(fontSize: 20),
        //                 ),
        //               ),
        //               SizedBox(
        //                 width: 10,
        //               ),
        //             ],
        //           )
        //         ],
        //       ),
        //     )),

        Container(
          margin: EdgeInsets.symmetric(vertical: 2.0),
          height: 65,
          decoration: BoxDecoration(
            color: Colors.black54,
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                  width: 150,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(0.0),
                  margin: const EdgeInsets.all(0.0),
                  child: ListTile(
                    //
                    leading:
                        Icon(Icons.shopping_bag, size: 40, color: Colors.black),
                    title: Text(
                      "Cloths",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("5 items"),
                  )),
              SizedBox(
                width: 3,
              ),
              Container(
                  width: 160,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(0.0),
                  margin: const EdgeInsets.all(0.0),
                  child: ListTile(
                    //
                    leading: Icon(Icons.electrical_services_rounded,
                        size: 40, color: Colors.black),
                    title: Text(
                      "Electronic",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("5 items"),
                  )),
              SizedBox(
                width: 3,
              ),
              Container(
                  width: 170,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(0.0),
                  margin: const EdgeInsets.all(0.0),
                  child: ListTile(
                    //
                    leading: Icon(Icons.chair_alt_rounded,
                        size: 40, color: Colors.black),
                    title: Text(
                      "Households",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("5 items"),
                  )),
              SizedBox(
                width: 3,
              ),
              Container(
                  width: 165,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(0.0),
                  margin: const EdgeInsets.all(0.0),
                  child: ListTile(
                    //
                    leading:
                        Icon(Icons.home_work, size: 40, color: Colors.black),
                    title: Text(
                      "Appliances",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("5 items"),
                  )),
              SizedBox(
                width: 3,
              ),
              Container(
                  width: 150,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(0.0),
                  margin: const EdgeInsets.all(0.0),
                  child: ListTile(
                    //
                    leading: Icon(Icons.arrow_forward_ios,
                        size: 40, color: Colors.black),
                    title: Text(
                      "Others",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("5 items"),
                  )),
              SizedBox(
                width: 3,
              ),
            ],
          ),
        ),

        SizedBox(
          height: 5,
        ),
        new Expanded(
          child: GridView.count(
            //physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: <Widget>[
              //Padding(padding: EdgeInsets.only(bottom: 20)),
              //iphon12
              //iphon12
              GestureDetector(
                onTap: () {
                  print("Yes");
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  margin:
                      EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
                  elevation: 10.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Image.network(
                              "https://www.factmalta.com/wp-content/uploads/2019/04/apple-iphone-xs-2019_5cb8a25e2aa49.jpeg",
                              height: 130,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 130, left: 5, right: 5),
                            color: Colors.white,
                            height: 50,
                            width: 160,
                            child: Stack(
                              children: [
                                Text(
                                  "IPHONE 12",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                  margin:
                      EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
                  elevation: 10.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(
                              "assets/noteultra.jpg",
                              height: 130,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 130, left: 5, right: 5),
                            color: Colors.white,
                            height: 50,
                            width: 160,
                            child: Stack(
                              children: [
                                Text(
                                  "Note 20 Ultra",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                  margin:
                      EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
                  elevation: 10.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(
                              "assets/makebookair.jpg",
                              height: 130,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 130, left: 5, right: 5),
                            color: Colors.white,
                            height: 50,
                            width: 160,
                            child: Stack(
                              children: [
                                Text(
                                  "Macbook Air",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                  margin:
                      EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
                  elevation: 10.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(
                              "assets/makebookpro.jpg",
                              height: 130,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 130, left: 5, right: 5),
                            color: Colors.white,
                            height: 50,
                            width: 160,
                            child: Stack(
                              children: [
                                Text(
                                  "Macbook Pro",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                  margin:
                      EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
                  elevation: 10.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(
                              "assets/gamingpc.jpeg",
                              height: 130,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 130, left: 5, right: 5),
                            color: Colors.white,
                            height: 50,
                            width: 160,
                            child: Stack(
                              children: [
                                Text(
                                  "Gaming PC",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                  margin:
                      EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
                  elevation: 10.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(
                              "assets/backlit.jpg",
                              height: 130,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 130, left: 5, right: 5),
                            color: Colors.white,
                            height: 50,
                            width: 160,
                            child: Stack(
                              children: [
                                Text(
                                  "Backlit",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                  margin:
                      EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
                  elevation: 10.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(
                              "assets/mercedes.jpg",
                              height: 130,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 130, left: 5, right: 5),
                            color: Colors.white,
                            height: 50,
                            width: 160,
                            child: Stack(
                              children: [
                                Text(
                                  "Mercedes",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                  margin:
                      EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
                  elevation: 10.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(
                              "assets/mutton.jpg",
                              height: 130,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 130, left: 5, right: 5),
                            color: Colors.white,
                            height: 50,
                            width: 160,
                            child: Stack(
                              children: [
                                Text(
                                  "Mutton",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                  margin:
                      EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
                  elevation: 10.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(
                              "assets/roadster.jpg",
                              height: 130,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 130, left: 5, right: 5),
                            color: Colors.white,
                            height: 50,
                            width: 160,
                            child: Stack(
                              children: [
                                Text(
                                  "Roadster",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                  margin:
                      EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
                  elevation: 10.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(
                              "assets/royalfield.jpg",
                              height: 130,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 130, left: 5, right: 5),
                            color: Colors.white,
                            height: 50,
                            width: 160,
                            child: Stack(
                              children: [
                                Text(
                                  "Royal Field",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                  margin:
                      EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
                  elevation: 10.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(
                              "assets/wireless.jpg",
                              height: 130,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 130, left: 5, right: 5),
                            color: Colors.white,
                            height: 50,
                            width: 160,
                            child: Stack(
                              children: [
                                Text(
                                  "Wireless",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                  margin:
                      EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
                  elevation: 10.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(
                              "assets/tab.jpg",
                              height: 130,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 130, left: 5, right: 5),
                            color: Colors.white,
                            height: 50,
                            width: 160,
                            child: Stack(
                              children: [
                                Text(
                                  "Tab",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
                  margin:
                      EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 5),
                  elevation: 10.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(
                              "assets/cam.jpg",
                              height: 130,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 130, left: 5, right: 5),
                            color: Colors.white,
                            height: 50,
                            width: 160,
                            child: Stack(
                              children: [
                                Text(
                                  "Samsung",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
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
          ),
        )
      ],
    ));
  }
}
