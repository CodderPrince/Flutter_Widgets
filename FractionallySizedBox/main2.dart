import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget{
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Fractionally Sized Box",
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
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.3,
          child: Container(
            color: Colors.green,
          ),
        ),
      )
    );
  }
  
}