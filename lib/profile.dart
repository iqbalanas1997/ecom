import 'package:ecom/editprofile.dart';
import 'package:ecom/profilewidget.dart';
import 'package:ecom/user_preferences.dart';
import 'package:ecom/users.dart';
import 'package:ecom/widget/buttonwidget.dart';
import 'package:ecom/widget/numberswidget.dart';
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
            isEdit: false,
            onClicked: () async {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
            },
          ),
          SizedBox(
            height: 24,
          ),
          buildName(user),
          SizedBox(
            height: 24,
          ),
          Center(child: buildUpgradeBtn()),
          SizedBox(
            height: 24,
          ),
          NumbersWidget(),
          SizedBox(
            height: 24,
          ),
          buildAbout(user),
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

  Widget buildAbout(Users user) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(user.about)
        ],
      ),
    );
  }
}
