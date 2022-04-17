import 'package:flutter/material.dart';
import 'package:nova/homapage.dart';
import 'package:nova/logIn.dart';

void main() {
  runApp(nova());
}

class nova extends StatelessWidget {
  const nova({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.purple,
      ),
      // routes: {
      //   "/": (context) => logInPage(),
      //   "/home": (context) => HomePage(),
      // },
    );
  }
}
