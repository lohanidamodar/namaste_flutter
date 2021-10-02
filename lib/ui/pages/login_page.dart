import 'package:flutter/material.dart';
import '../../res/assets.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
          Image.asset(Assets.candlesImage),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Login",
                style: TextStyle(
                  fontFamily: Assets.fontFamilyLobster,
                  fontSize: 40.0,
                ),
              ),
              const SizedBox(width: 20.0, height: 100),
              const Text(
                'Be',
                style: TextStyle(fontSize: 43.0),
              ),
              const SizedBox(width: 20.0, height: 100.0),
              DefaultTextStyle(
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: Assets.fontFamilyLobster,
                  color: Colors.black,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText(
                      'AWESOME',
                      textStyle: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                      ),
                    ),
                    RotateAnimatedText(
                      'OPTIMISTIC',
                      textStyle: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                      ),
                    ),
                    RotateAnimatedText(
                      'DIFFERENT',
                      textStyle: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Image.network(
          //     "https://cdn.pixabay.com/photo/2020/06/20/18/04/people-5321914_960_720.jpg"),
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
