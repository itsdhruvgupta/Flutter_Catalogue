import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        childern: [
          DrawerHeader(
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                  ),
                                  child: Text(
                                      'Drawer Header',
                                      style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      ),
                                  ),
                              ),
        ],
      ),
    );
  }
}
