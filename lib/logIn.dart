import 'package:flutter/material.dart';

class logInPage extends StatelessWidget {
  const logInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/Log1.png",
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "UserName",
                    hintText: "Enter UserName",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("hey there nova");
                  },
                  child: Text("Log In"),
                  style: TextButton.styleFrom(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
