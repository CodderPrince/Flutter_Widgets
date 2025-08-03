import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget{
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Aspect Ratio",
     home: HomeActivity1(),
   );
  }

}

class HomeActivity1 extends StatelessWidget
{
  const HomeActivity1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Container(
        width: double.infinity,
        height: 300,
        color: Colors.red,
        alignment: Alignment.center,
        child: AspectRatio(
            aspectRatio: 16/9,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
  
}