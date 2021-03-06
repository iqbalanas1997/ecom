import 'package:ecom/profile.dart';
import 'package:flutter/material.dart';

import 'cart.dart';
import 'home.dart';
import 'like.dart';

class Ecom extends StatefulWidget {
  @override
  _EcomState createState() => _EcomState();
}

class _EcomState extends State<Ecom> {
  int currentTab = 0;
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            "Ecom App UI",
            style: TextStyle(
              color: Colors.black,
            ),
          )),
        ),
        body: PageStorage(
          bucket: PageStorageBucket(),
          child: currentScreen,
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      currentScreen = Home();
                      currentTab = 0;
                    });
                  },
                  child: Icon(
                    Icons.home,
                    size: 40,
                    color: currentTab == 0 ? Colors.purple : Colors.grey,
                  ),
                ),
                MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      currentTab = 1;
                      currentScreen = Like();
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    size: 40,
                    color: currentTab == 1 ? Colors.purple : Colors.grey,
                  ),
                ),
                MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      currentTab = 2;
                      currentScreen = Cart();
                    });
                  },
                  child: Icon(
                    Icons.search,
                    size: 40,
                    color: currentTab == 2 ? Colors.purple : Colors.grey,
                  ),
                ),
                MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      currentTab = 2;
                      currentScreen = Cart();
                    });
                  },
                  child: Icon(
                    Icons.shopping_cart,
                    size: 40,
                    color: currentTab == 2 ? Colors.purple : Colors.grey,
                  ),
                ),
                MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentTab = 3;
                        currentScreen = Profile();
                      });
                    },
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: currentTab == 3 ? Colors.purple : Colors.grey,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
