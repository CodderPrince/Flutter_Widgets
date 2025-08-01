import 'package:flutter/material.dart';

import 'HomeActivity24.dart';

void main() {
  runApp(MyApp24());
}

class MyApp24 extends StatelessWidget {
  const MyApp24({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Form Navigation',
      home: HomeActivity24(),
      debugShowCheckedModeBanner: false,
    );
  }
}
