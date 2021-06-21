import 'package:flutter/material.dart';
import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  //method to go to home
  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      // setState(() {
      //   changeButton = false;
      // });
    }
  }

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
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter User Name",
                        labelText: " User Name ",
                      ), //decoration
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Plese Enter The Username";
                        }
                        if (value.contains(" ")) {
                          return "User name should not contain any space";
                        }
                        return null;
                      },
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
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Plese Enter The Password";
                        }
                        if (value.contains(" ")) {
                          return "Wrong Password ! Enter The Password Again ";
                        }
                        if (value.length < 6) {
                          return "Password  must be more then 6 characters";
                        }
                        return null;
                      },
                    ), //textfield
                    SizedBox(
                      height: 22.0,
                    ), //box

                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(
                        (changeButton ? 50 : 8),
                      ),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(
                            seconds: 1,
                          ),
                          width: changeButton ? 50 : 100,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                        ),
                      ),
                    ),

                    // ElevatedButton(
                    //     child: Text("Login"),
                    //     style: TextButton.styleFrom(minimumSize: Size(100, 50)),
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     }), //button
                  ], //children
                ),
              ), //column
            ), //padding
          ], //column
        ), //childern
      ), //scrollview
    ); //matarial
  }
}
