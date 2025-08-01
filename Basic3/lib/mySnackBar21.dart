import 'package:flutter/material.dart';

import 'textStyle20.dart';

mySnackBar21(context, message) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message, style: textStyle20),
      duration: Duration(seconds: 2),
      backgroundColor: Colors.yellow.shade200,
    ),
  );
}
