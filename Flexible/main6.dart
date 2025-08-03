import 'package:flutter/material.dart';

void main() {
  runApp(MyApp6());
}

class MyApp6 extends StatelessWidget {
  const MyApp6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flexible",
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
          Flexible(flex: 2, fit: FlexFit.tight, child: Container(color: Colors.green)),
          Flexible(flex: 1,fit: FlexFit.tight, child: Container(color: Colors.red)),
          Flexible(flex: 3,fit: FlexFit.tight, child: Container(color: Colors.blue)),
          Flexible(flex: 5,fit: FlexFit.loose, child: Container(color: Colors.yellow)),
          Flexible(child: Container(color: Colors.pink)),
        ],
      ),
    );
  }
}
