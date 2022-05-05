import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nova/Models/catalog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String CatalogName = "Nova's catalog ";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData() async {
      var CatalogJson = await rootBundle.loadString("assets/files/catalog.json");
      var decodedData = jsonDecode(CatalogJson);
      var productdata = decodedData["products"];
      catalogModel.items = List.from(productdata).map<Item>((item) => Item.fromMap(item)).toList();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nova's Catalog",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: catalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: catalogModel.items[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
