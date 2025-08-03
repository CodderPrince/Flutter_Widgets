import 'package:flutter/material.dart';

TextStyle HeadLine(context) {
  var width = MediaQuery.of(context).size.width;

  if (width < 700) {
    //Mobile or Tablet
    return TextStyle(
      color: Colors.blue,
      fontSize: 34,
      fontWeight: FontWeight.bold,
    );
  } else {
    return TextStyle(
      color: Colors.black,
      fontSize: 65,
      fontWeight: FontWeight.bold,
    );
  }
}
