import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              accountName: Text("Dhruv"),
              accountEmail: Text("dhruvg304@"),
            ),
          ),
        ],
      ),
    );
  }
}
