import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> items = [
    "Computer",
    "Motherboard",
    "RAM",
    "SSD",
    "HDD",
    "Graphics Card",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          String item = items[index];
          return Container(
            height: 600,
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(16.0),
            color: index % 2 == 0 ? Colors.green.shade200 : Colors.red.shade200,
            child: Text(
              item,
              style: TextStyle(fontSize: 24.0),
            ),
          );
        },
      ),
    );
  }
}
