import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalogue/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  Widget build(BuildContext context) {
    return Card(
      // elevation: 0.0,

      color: Colors.purple[50],
      child: ListTile(
        onTap: () {
          print("tap on card");
        },
        leading: Image.asset(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$ ${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
