import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final String CatalogName = "Nova's catalog ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova's Catalog"),
      ),
      body: Center(
        child: Container(
          child: Text("Welocome To $CatalogName"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
