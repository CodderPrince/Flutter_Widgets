import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("AppBar")
        ),
        body: Center(child: Text("Hello World!")))),
  );
}
