import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 500,
      height: 500,
      child: Image.asset(
        "assets/workinprogress.jpeg",
        width: 500,
        height: 500,
      ),
    ));
  }
}
