class Item {
  final int id;
  final String name;
  final String decs;
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
      image: 'asserts/images/iphone.png',
    )
  ];
}
