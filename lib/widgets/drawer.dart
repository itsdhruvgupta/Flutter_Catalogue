import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl = "https://pbs.twimg.com/profile_images/1276447283190603776/_tO_paWz_400x400.jpg";
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
              currentAccountPicture: Image.network(imageUrl),
            ),
          ),
        ],
      ),
    );
  }
}
