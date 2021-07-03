import 'package:flutter/material.dart';

class Like extends StatefulWidget {
  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
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
