import 'package:ecom/profilewidget.dart';
import 'package:ecom/user_preferences.dart';
import 'package:ecom/users.dart';
import 'package:ecom/widget/buttonwidget.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          SizedBox(
            height: 24,
          ),
          buildName(user),
          SizedBox(
            height: 24,
          ),
          Center(child: buildUpgradeBtn()),
        ],
      ),
    );
  }

  Widget buildName(Users user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            user.email,
            style: TextStyle(fontSize: 15, color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeBtn() => ButtonWidget(
        text: 'Upgrade to pro',
        onClicked: () {},
      );
}
