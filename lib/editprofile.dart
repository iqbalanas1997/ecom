import 'package:ecom/profilewidget.dart';
import 'package:ecom/user_preferences.dart';
import 'package:ecom/users.dart';
import 'package:ecom/widget/textfieldwidget.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  Users user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      ProfileWidget(
        imagePath: user.imagePath,
        isEdit: true,
        onClicked: () async {},
      ),
      SizedBox(
        height: 20,
      ),
      TextFieldWidget(
        label: "Full Name",
        txt: user.name,
        onChanged: (name) {},
      ),
      TextFieldWidget(
        label: "Email",
        txt: user.email,
        onChanged: (email) {},
      ),
      TextFieldWidget(
        label: "About",
        txt: user.about,
        maxLines: 5,
        onChanged: (about) {},
      ),
    ]));
  }
}
