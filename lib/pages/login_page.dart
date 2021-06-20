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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              childern: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter User Name",
                    labelText: " User Name ",
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: " Password ",
                  ),
                ),
              ],
            ),
          ),
        ], //column
      ), //childern
    ); //matarial
  }
}
