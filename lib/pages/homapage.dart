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
      await Future.delayed(Duration(seconds: 2));
      var CatalogJson = await rootBundle.loadString("assets/files/catalog.json");
      final decodedData = jsonDecode(CatalogJson);
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
      body: (catalogModel.items != null && catalogModel.items.isEmpty)
          ? ListView.builder(
              itemCount: catalogModel.items.length,
              itemBuilder: (context, index) {
                return ItemWidget(
                  item: catalogModel.items[index],
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }
}
