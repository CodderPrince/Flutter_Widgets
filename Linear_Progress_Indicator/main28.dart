import 'package:flutter/material.dart';

import 'HomeActivity28.dart';

void main() {
  runApp(MyApp28());
}

class MyApp28 extends StatelessWidget {
  const MyApp28({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circular Progress Indicator',
      home: HomeActivity28(),
      debugShowCheckedModeBanner: false,
    );
  }
}
