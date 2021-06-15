import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nepali Quiz"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey.shade300,
              width: double.maxFinite,
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
            TextButton(
              style: TextButton.styleFrom(
                fixedSize: Size(250, 60),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20.0),
              ),
              onPressed: () {
                print("option 1 tapped");
              },
              child: Text(
                "1. Prithvi Narayan Shah",
                textDirection: TextDirection.ltr,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                fixedSize: Size(250, 60),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20.0),
              ),
              onPressed: () {
                print("option 2 tapped");
              },
              child: Text(
                "2. Mahendra Shah",
                textDirection: TextDirection.ltr,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                fixedSize: Size(250, 60),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20.0),
              ),
              onPressed: () {
                print("option 3 tapped");
              },
              child: Text(
                "3. Birendra Shah",
                textDirection: TextDirection.ltr,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                fixedSize: Size(250, 60),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20.0),
              ),
              onPressed: () {
                print("option 4 tapped");
              },
              child: Text(
                "4. Dipendra Shah",
                textDirection: TextDirection.ltr,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Submit pressed");
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(150, 60),
              ),
              child: Text(
                "Submit",
                textDirection: TextDirection.ltr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
