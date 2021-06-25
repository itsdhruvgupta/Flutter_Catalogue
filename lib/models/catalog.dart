import 'package:flutter/material.dart';

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: " iphone",
      price: 21000,
      color: "33505a",
      desc: "Iphone 12 pro max sale",
      image: "assets/images/iphone.jpg",
    )
  ];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  
}
