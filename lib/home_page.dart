import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text(" Dhruv "),
      ),
      body: Center(
        child: Container(
          child: Text("wellcome home  $days"),
        ), //container
      ), //center
      drawer: Drawer(),
    ); //scaffold
  }
}
