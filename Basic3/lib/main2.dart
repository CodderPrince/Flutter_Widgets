import 'package:basic3/myAppbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.blue,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Inventory App", style: TextStyle(color: Colors.white),),
        titleSpacing: 0,
        //centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){}, icon: Icon(Icons.email)),
        ],
      ),
      body: Center(child: Text("hello prince",style: TextStyle(color: Colors.blue),)),
    );
  }
}
