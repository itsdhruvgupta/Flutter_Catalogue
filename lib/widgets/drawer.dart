import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl = "https://pbs.twimg.com/profile_images/1276447283190603776/_tO_paWz_400x400.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                accountName: Text("Dhruv"),
                accountEmail: Text("dhruvg304@"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: Navigator.pushNamed(context, MyRoutes.homeRoute);
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                "Proflie",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mail_outline,
                color: Colors.white,
              ),
              title: Text(
                "Contact Us",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        color: Colors.deepPurple,
      ),
    );
  }
}
