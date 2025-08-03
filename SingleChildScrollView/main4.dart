import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp4());
}

class MyApp4 extends StatelessWidget{
  const MyApp4({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Single Child Scroll View",
     home: HomeActivity1(),
     debugShowCheckedModeBanner: false,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 200, width: 200, color: Colors.black,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.red,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.yellow,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.grey,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.brown,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.lime,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.greenAccent,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.orange,
                  ),
          
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 200, width: 200, color: Colors.red,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.green,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.blue,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.green,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.pink,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.yellow,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.purple,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.white,
                  ),
          
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 200, width: 200, color: Colors.black,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.red,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.blue,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.green,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.pink,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.yellow,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.purple,
                  ),
                  Container(
                    height: 200, width: 200, color: Colors.white,
                  ),
          
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
  
}