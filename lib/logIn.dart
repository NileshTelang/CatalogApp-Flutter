import 'package:flutter/material.dart';

class logInPage extends StatelessWidget {
  const logInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "LogIn",
          style: TextStyle(
            fontSize: 20,
            color: Colors.lightBlue,
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 2.0,
        ),
      ),
    );
  }
}
