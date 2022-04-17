import 'package:flutter/material.dart';
import 'package:nova/homapage.dart';

void main() {
  runApp(nova());
}

class nova extends StatelessWidget {
  const nova({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
