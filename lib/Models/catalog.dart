class catalogModel {
  static final items = [
    Item(
        id: 1,
        name: "IPhone 12 Pro",
        desc: "Apple Iphone 12th Gen",
        price: 4131,
        color: "#33505a",
        image: "https://cdn.shopify.com/s/files/1/0504/5787/0536/products/71OO_WDhyFL._AC_SX522_360x.jpg?v=1629660254"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String image;
  final String color;

  Item({required this.id, required this.name, required this.color, required this.desc, required this.image, required this.price});
}
