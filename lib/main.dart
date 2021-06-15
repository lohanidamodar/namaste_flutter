import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.only(bottom: 20.0),
            child: Text(
              "Who unified nepal?",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
              ),
              textDirection: TextDirection.ltr,
            ),
          ),
          GestureDetector(
            onTap: () {
              print("option 1 tapped");
            },
            child: Container(
              color: Colors.grey.shade600,
              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.only(bottom: 12.0),
              width: 250,
              child: Text(
                "1. Prithvi Narayan Shah",
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("option 2 tapped");
            },
            child: Container(
              width: 250,
              color: Colors.grey.shade600,
              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.only(bottom: 12.0),
              child: Text(
                "2. Mahendra Shah",
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("option 3 tapped");
            },
            child: Container(
              width: 250,
              color: Colors.grey.shade600,
              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.only(bottom: 12.0),
              child: Text(
                "3. Birendra Shah",
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("option 4 tapped");
            },
            child: Container(
              width: 250,
              color: Colors.grey.shade600,
              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.only(bottom: 12.0),
              child: Text(
                "4. Dipendra Shah",
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("submit tapped");
            },
            child: Container(
              width: 150,
              color: Colors.red,
              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.only(top: 12.0),
              alignment: Alignment.center,
              child: Text(
                "Submit",
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
