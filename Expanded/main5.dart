import 'package:flutter/material.dart';

void main() {
  runApp(MyApp5());
}

class MyApp5 extends StatelessWidget {
  const MyApp5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expanded",
      home: HomeActivity1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity1 extends StatelessWidget {
  const HomeActivity1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Bar")),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: Container(color: Colors.green)),
          Expanded(flex: 1, child: Container(color: Colors.red)),
          Expanded(flex: 3, child: Container(color: Colors.blue)),
          Expanded(flex: 5, child: Container(color: Colors.yellow)),
          Expanded(child: Container(color: Colors.black)),
        ],
      ),
    );
  }
}
