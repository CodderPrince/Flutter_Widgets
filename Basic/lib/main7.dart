import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     Center(
//       child: Text(
//         "The Quick Brown Fox Jumps Over The Lazy Dog",
//         textDirection: TextDirection.ltr,
//         style: TextStyle(fontSize: 55,color: Colors.purple,fontWeight: FontWeight.w300,overflow: TextOverflow.fade),
//       ),
//     ),
//   );
// }

void main() {
  runApp(
    MaterialApp(
      title: "Flutter Basic Learning!",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Ostad Flutter app",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
              Text("Hello world"),
            ],
          ),
        ),
      ),
    ),
  );
}
