import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        childern: [
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
