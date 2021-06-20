import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 22.0,
          ), //box
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ), //children - image
          SizedBox(
            height: 22.0,
          ), //box
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ), //style
          ), //text
          SizedBox(
            height: 22.0,
          ), //box
          // TextFormField(
          //   decoration: InputDecoration(lableText: "User Name",
          //     hintText: " Enter User Name",
          //   ),
          // ),
          TextFormField(
            DecoratedBox(
              hintText: "Enter User Name",
            )
          ),
        ], //column
      ), //childern
    ); //matarial
  }
}
