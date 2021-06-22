class Item {
  final String id;
  final String name;
  final String decs;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products = [
  Iten(
    id: "item1",
    name: " iphone",
    price: 21000,
    color: "33505a",
    desc: "Iphone 12 pro max sale",
    image: Image.asset(
      "assets/images/login.png",
    ),
  )
];
