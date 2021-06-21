import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl = "https://www.google.com/url?sa=i&url=https%3A%2F%2Ftwitter.com%2Fdhruvguptattr&psig=AOvVaw1zEeYWNReohNDzAIfMRoZg&ust=1624379513447000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCNiv5rKTqfECFQAAAAAdAAAAABAD";
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
