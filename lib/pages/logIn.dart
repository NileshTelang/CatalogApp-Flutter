import 'dart:html';

import 'package:flutter/material.dart';
import 'package:nova/utils/routes.dart';

class logInPage extends StatefulWidget {
  const logInPage({Key? key}) : super(key: key);

  @override
  State<logInPage> createState() => _logInPageState();
}

class _logInPageState extends State<logInPage> {
  String nova = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.Home);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/Hey.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $nova",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Invalid UserName";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "UserName",
                        hintText: "Enter UserName",
                      ),
                      onChanged: (value) {
                        nova = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Invalid PassWord";
                        } else if (value.length < 6) {
                          return "Password Ain't have length";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(
                        changebutton ? 50 : 08,
                      ),
                      child: InkWell(
                        splashColor: Colors.cyan,
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changebutton ? 50 : 150,
                          height: 41,
                          alignment: Alignment.center,
                          child: changebutton
                              ? Icon(Icons.done)
                              : Text(
                                  "LOG IN",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                          // decoration: BoxDecoration(
                          //   color: Colors.amber,
                          //   borderRadius: BorderRadius.circular(
                          //     changebutton ? 50 : 08,
                          //   ),
                          // ),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     print("Hey there nova");
                    //     Navigator.pushNamed(context, MyRoutes.Home);
                    //   },
                    //   child: Text("Log In"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 41)),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
