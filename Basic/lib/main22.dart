import 'package:flutter/material.dart';

import 'HomeActivity21.dart';

void main() {
  runApp(MyApp22());
}

class MyApp22 extends StatelessWidget {
  const MyApp22({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View',
      home: HomeActivity21(),
      debugShowCheckedModeBanner: false,
    );
  }
}
