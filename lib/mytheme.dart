import 'package:flutter/material.dart';

class MyTheme {
  static final primaryColor = Colors.blue.shade300;
  static final primary = Colors.blue;

  static final darkTheme = ThemeData(
    primaryColorDark: primaryColor,

    scaffoldBackgroundColor: Colors.grey.shade900,

    colorScheme: ColorScheme.dark(primary: primary),

    //in case of darktheme divider color will be white
    dividerColor: Colors.white,
  );

  static final lightTheme = ThemeData(
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,

    colorScheme: ColorScheme.light(primary: primary),
    //canvasColor: Colors.white,
    //in case of darktheme divider color will be white
    dividerColor: Colors.grey,
  );
}
