import 'package:flutter/material.dart';

class HomeActivity28 extends StatelessWidget {
  const HomeActivity28({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Center(
        child: LinearProgressIndicator(
          backgroundColor: Colors.blue,
          color: Colors.red,
          minHeight: 10,

          //valueColor: Colors.green,
        )
      ),
    );
  }
}
