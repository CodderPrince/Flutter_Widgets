import 'package:flutter/material.dart';

import 'HomeActivity21.dart';

void main() {
  runApp(MyApp21());
}

class MyApp21 extends StatelessWidget {
  const MyApp21({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View',
      home: HomeActivity21(),
      debugShowCheckedModeBanner: false,
    );
  }
}
