// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class catalogModel {
  static List<Item> items = [
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

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
    required this.color,
  });

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    num? price,
    String? image,
    String? color,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      image: image ?? this.image,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'image': image,
      'color': color,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      price: map['price'] as num,
      image: map['image'] as String,
      color: map['color'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, price: $price, image: $image, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.image == image &&
        other.color == color;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ desc.hashCode ^ price.hashCode ^ image.hashCode ^ color.hashCode;
  }
}
