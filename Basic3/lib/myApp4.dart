import 'package:flutter/material.dart';

import 'myAppbar4.dart';

class MyApp4 extends StatelessWidget {
   MyApp4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeAcitivity());
  }
}

class HomeAcitivity extends StatelessWidget {
  const HomeAcitivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: myAppBar4(title: "Inventory App",));
  }
}
