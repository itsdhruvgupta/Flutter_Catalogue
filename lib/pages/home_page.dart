import 'package:flutter/material.dart';
import 'package:flutter_catalogue/widgets/drawer.dart';
import 'package:flutter_catalogue/models/catalog.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dhruv"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: CatalogModel.items[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    ); //scaffold
  }
}
