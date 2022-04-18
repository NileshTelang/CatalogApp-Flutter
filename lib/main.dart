import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova/pages/homapage.dart';
import 'package:nova/pages/logIn.dart';
import 'package:nova/utils/routes.dart';
import 'package:nova/widgets/themes.dart';

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
      debugShowCheckedModeBanner: false,
      theme: MyTheme.themeData,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        MyRoutes.LogIn: (context) => logInPage(),
        MyRoutes.Home: (context) => HomePage(),
      },
    );
  }
}
