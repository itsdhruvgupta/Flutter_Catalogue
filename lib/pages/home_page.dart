import 'package:flutter/material.dart';
import 'package:flutter_catalogue/widgets/drawer.dart';
import 'package:flutter_catalogue/models/catalog.dart';
import 'package:flutter_catalogue/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dmyList = List.generate(20, (index) => CatalogModel.items[0]);

    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dhruv"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dmyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dmyList[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    ); //scaffold
  }
}
