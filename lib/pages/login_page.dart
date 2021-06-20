import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 30.0,
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
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter User Name",
                    labelText: " User Name ",
                  ), //decoration
                ), //textfield
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: " Password ",
                  ), //decoration
                ), //textfield
                SizedBox(
                  height: 22.0,
                ), //box
                ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      print("hii dhruv");
                    }), //button
              ], //children
            ), //column
          ), //padding
        ], //column
      ), //childern
    ); //matarial
  }
}
