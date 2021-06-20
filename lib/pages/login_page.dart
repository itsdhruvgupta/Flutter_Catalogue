import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Image.asset(
          "assets/images/login.png",
          fit: BoxFit.cover,
        ),//children - image
        Text("Welcome",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )//style
          )//text
      ]//column
      ),//childern
    ); //matarial
  }
}
