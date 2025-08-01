import 'package:basic3/MyElevatedButon23.dart';
import 'package:flutter/material.dart';

class HomeActivity23 extends StatelessWidget {
  const HomeActivity23({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        body: Center(
          child: MyElevatedButton23(),
        ),
      ),
    );
  }
}
