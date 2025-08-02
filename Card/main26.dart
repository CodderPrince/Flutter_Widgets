import 'package:flutter/material.dart';

import 'HomeActivity25.dart';
import 'HomeActivity26.dart';

void main() {
  runApp(MyApp26());
}

class MyApp26 extends StatelessWidget {
  const MyApp26({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Form Navigation',
      home: HomeActivity26(),
      debugShowCheckedModeBanner: false,
    );
  }
}
