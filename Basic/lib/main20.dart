import 'package:flutter/material.dart';

import 'HomeActivity20.dart';

void main() {
  runApp(MyApp20());
}

class MyApp20 extends StatelessWidget {
  const MyApp20({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View',
      home: HomeActivity20(),
      debugShowCheckedModeBanner: false,
    );
  }
}
