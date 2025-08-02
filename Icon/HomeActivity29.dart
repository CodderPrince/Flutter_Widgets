import 'package:flutter/material.dart';

class HomeActivity29 extends StatelessWidget {
  const HomeActivity29({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Center(
        child: Icon(
          Icons.camera_alt,
          size: 200,
          color: Colors.red,
        ),
      ),
    );
  }
}
