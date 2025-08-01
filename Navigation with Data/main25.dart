import 'package:flutter/material.dart';

import 'HomeActivity25.dart';

void main() {
  runApp(MyApp25());
}

class MyApp25 extends StatelessWidget {
  const MyApp25({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Form Navigation',
      home: HomeActivity25(),
      debugShowCheckedModeBanner: false,
    );
  }
}
