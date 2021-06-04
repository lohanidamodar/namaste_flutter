import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Namaste Flutter",
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: 100, color: Colors.pink),
    );
  }
}
