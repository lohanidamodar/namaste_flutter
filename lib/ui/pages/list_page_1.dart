import 'package:flutter/material.dart';
import 'package:namaste_flutter/ui/pages/profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nepali Quiz"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProfilePage(),
                ),
              );
            },
            icon: Icon(Icons.person),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
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
              showDialog(
                  context: context,
                  builder: (context) {
                    return Center(
                      child: Container(
                        child: ElevatedButton(
                          child: Text("Cancel"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    );
                    return AlertDialog(
                      title: Text("Submit quiz"),
                      content: Text("Are you sure you want to submit?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            print("ok working on job");
                            Navigator.pop(context);
                          },
                          child: Text("OK"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Cancel"),
                        ),
                      ],
                    );
                  });
              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(
              //     content:
              //         Text("You cannot submit without selecting an answer"),
              //     backgroundColor: Colors.red,
              //   ),
              // );
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(150, 60),
            ),
            child: Text(
              "Submit",
              textDirection: TextDirection.ltr,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            height: 600,
            color: Colors.red.shade200,
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            height: 600,
            color: Colors.red.shade200,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
