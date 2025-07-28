import 'package:flutter/material.dart';

import 'HomeActivity23.dart';

void main() {
  runApp(MyApp23());
}

class MyApp23 extends StatelessWidget {
  const MyApp23({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snackbar',
      home: HomeActivity23(),
      debugShowCheckedModeBanner: false,
    );
  }
}
