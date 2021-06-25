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
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(
          item.name,
          textScaleFactor: 1.2,
        ),
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
