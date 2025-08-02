import 'package:flutter/material.dart';

import 'HomeActivity27.dart';

void main() {
  runApp(MyApp27());
}

class MyApp27 extends StatelessWidget {
  const MyApp27({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circular Progress Indicator',
      home: HomeActivity27(),
      debugShowCheckedModeBanner: false,
    );
  }
}
