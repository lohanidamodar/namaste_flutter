import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController unController = TextEditingController();
  TextEditingController pwController = TextEditingController();
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TextField(
            controller: unController,
            decoration: InputDecoration(
              hintText: "Username",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: pwController,
                  decoration: InputDecoration(
                    hintText: "password",
                  ),
                  obscureText: hidePassword,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                },
                icon: Icon(Icons.remove_red_eye),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              String username = unController.text;
              String password = pwController.text;
              print("username: $username");
              print("password: $password");
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
