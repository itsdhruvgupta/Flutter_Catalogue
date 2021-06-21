import 'package:flutter/material.dart';
import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
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
              "Welcome $name",
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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

                  Container(
                    color: Colors.deepPurple,
                    width: 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  )

                  // ElevatedButton(
                  //     child: Text("Login"),
                  //     style: TextButton.styleFrom(minimumSize: Size(100, 50)),
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     }), //button
                ], //children
              ), //column
            ), //padding
          ], //column
        ), //childern
      ), //scrollview
    ); //matarial
  }
}
