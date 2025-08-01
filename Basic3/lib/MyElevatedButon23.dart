import 'package:flutter/material.dart';

import 'mySnackBar23.dart';

class MyElevatedButton23 extends StatelessWidget {
  const MyElevatedButton23({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle buttonTextStyle = TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.teal,
      fixedSize: const Size(200, 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );

    return ElevatedButton(
      style: elevatedButtonStyle,
      onPressed: () {mySnackBar23(context, "Hello World");},
      child: Text('SnackBar', style: buttonTextStyle),
    );
  }
}
