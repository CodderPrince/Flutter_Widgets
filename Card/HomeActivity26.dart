import 'package:flutter/material.dart';

class HomeActivity26 extends StatelessWidget {
  const HomeActivity26({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Center(
        child: Card(
          shadowColor: Color.fromRGBO(43, 140, 99, 1.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          elevation: 80,
          color: Color.fromRGBO(255, 186, 186, 1.0),
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(
              child: Text("This is card", style: TextStyle(fontSize: 23)),
            ),
          ),
        ),
      ),
    );
  }
}
