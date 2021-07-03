import 'package:ecom/mytheme.dart';
import 'package:ecom/profile.dart';
import 'package:ecom/user_preferences.dart';
import 'package:ecom/widget/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';

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
  final icon = CupertinoIcons.moon_stars;
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return ThemeProvider(
        initTheme: user.isDarkMode ? MyTheme.darkTheme : MyTheme.lightTheme,
        child: Builder(
          builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeProvider.of(context),
            home: ThemeSwitchingArea(
              child: Builder(
                builder: (context) => Scaffold(
                  drawer: MyDrawer(),
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    elevation: 0.0,
                    iconTheme: IconThemeData(color: Colors.blue),
                    actions: [
                      ThemeSwitcher(
                        builder: (context) => IconButton(
                          icon: Icon(icon),
                          onPressed: () {
                            final theme = isDarkMode
                                ? MyTheme.lightTheme
                                : MyTheme.darkTheme;
                            print("pressed");
                            final switcher = ThemeSwitcher.of(context)!;
                            switcher.changeTheme(theme: theme);
                          },
                        ),
                      )
                    ],
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
                              color:
                                  currentTab == 0 ? Colors.purple : Colors.grey,
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
                              color:
                                  currentTab == 1 ? Colors.purple : Colors.grey,
                            ),
                          ),
                          MaterialButton(
                            minWidth: 50,
                            onPressed: () {
                              setState(() {});
                            },
                            child: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.blue,
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
                              color:
                                  currentTab == 2 ? Colors.purple : Colors.grey,
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
                                color: currentTab == 3
                                    ? Colors.purple
                                    : Colors.grey,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
