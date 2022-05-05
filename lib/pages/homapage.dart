import 'package:flutter/material.dart';
import 'package:nova/Models/catalog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final String CatalogName = "Nova's catalog ";

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(10, (index) => catalogModel.items[0]);
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
        itemCount: dummylist.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummylist[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
