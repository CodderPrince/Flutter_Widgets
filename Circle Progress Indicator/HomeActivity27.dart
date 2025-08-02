import 'package:flutter/material.dart';

class HomeActivity27 extends StatelessWidget {
  const HomeActivity27({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.blue,
          color: Colors.red,
          strokeWidth: 5,

          //value: 0.1,
        )
      ),
    );
  }
}
