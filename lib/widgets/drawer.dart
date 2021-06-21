import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      padding: EdgeInsets.all(0),
      child: ListView(
        children: [
          DrawerHeader(
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
