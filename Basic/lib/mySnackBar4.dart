import 'package:flutter/material.dart';

mySnackBar4(message, context){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message,style: TextStyle(color: Colors.yellow, fontSize: 30),),
      backgroundColor:Colors.green,)
  );
}