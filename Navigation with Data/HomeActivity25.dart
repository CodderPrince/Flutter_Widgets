import 'package:flutter/material.dart';

class HomeActivity25 extends StatelessWidget {
  const HomeActivity25({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => Activity1("This is from home to Activity 1"),
                ),
              );
            },
            child: Text("Go Activity 1"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => Activity2("This is from home to Activity 2"),
                ),
              );
            },
            child: Text("Go Activity 2"),
          ),
        ],
      ),
    );
  }
}

class Activity1 extends StatelessWidget {
  String msg;

  /// Constructor
  Activity1(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(msg)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            Activity2("This is from home to Activity 2"),
                  ),
                );
              },
              child: Text("Activity 2 page"),
            ),
          ],
        ),
      ),
    );
  }
}

class Activity2 extends StatelessWidget {
  String msg;

  /// Constructor
  Activity2(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(msg)));
  }
}
