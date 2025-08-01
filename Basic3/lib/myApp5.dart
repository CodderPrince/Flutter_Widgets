import 'package:flutter/material.dart';

import 'myAppbar4.dart';
import 'myAppbar5.dart';

class MyApp5 extends StatelessWidget {
   MyApp5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeAcitivity());
  }
}

class HomeAcitivity extends StatelessWidget {
  const HomeAcitivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: myAppBar5(title: "Inventory App",));
  }
}
