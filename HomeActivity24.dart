import 'package:flutter/material.dart';

class HomeActivity24 extends StatelessWidget {
  const HomeActivity24({super.key});

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
                MaterialPageRoute(builder: (context) => Activity1()),
              );
            },
            child: Text("Go Activity 1"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Activity2()),
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
  const Activity1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Activity 1")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Activity2()),
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
  const Activity2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Activity 2")));
  }
}
