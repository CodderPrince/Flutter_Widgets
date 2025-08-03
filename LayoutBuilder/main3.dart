import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp3());
}

class MyApp3 extends StatelessWidget{
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Layout Builder",
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
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
            if(constraints.maxWidth>600)
              {
                return Container(
                  height: 400,
                  width: 400,
                  color: Colors.green,
                );
              }
            else{
              return Container(
                height: 200,
                width: 200,
                color: Colors.red,
              );
            }
          }
      ),
    );
  }
  
}