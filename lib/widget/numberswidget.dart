import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, '4.8', 'Rating'),
          buildDivider(),
          buildButton(context, '35', 'Following'),
          buildDivider(),
          buildButton(context, '2.5M', 'Followers'),
        ],
      ),
    );
  }

  buildButton(BuildContext context, String value, String ranking) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 10),
      onPressed: () {},
      child: Column(
        children: [
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            ranking,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDivider() => Container(height: 30, child: VerticalDivider());
}
