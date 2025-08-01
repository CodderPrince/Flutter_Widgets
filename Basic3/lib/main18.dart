import 'package:flutter/material.dart';

import 'MyAppBar18.dart';

void main() {
  runApp(MyApp18());
}

class MyApp18 extends StatelessWidget {
  const MyApp18({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity18(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity18 extends StatelessWidget {
  const HomeActivity18({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: MyAppBar18());
  }
}
