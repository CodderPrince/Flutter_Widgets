import 'package:flutter/material.dart';

void main() {
  runApp(MyApp12());
}

class MyApp12 extends StatelessWidget {
  const MyApp12({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity12());
  }
}

class HomeActivity12 extends StatelessWidget {
  const HomeActivity12({super.key});

  @override
  Widget build(BuildContext context) {

    ///Elevated Button Style Method
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
        padding: EdgeInsets.all(16),
        minimumSize: Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),);

    ///Text Style Method
    TextStyle textStyle = TextStyle(
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(title: Text("My APP")),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: buttonStyle,
                onPressed: () {},
                child: Text(
                  "Submit",
                  style: textStyle
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
