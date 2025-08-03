import 'package:basic4/style7.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp7());
}

class MyApp7 extends StatelessWidget {
  const MyApp7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Media Query",
      home: HomeActivity1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity1 extends StatelessWidget {
  const HomeActivity1({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(title: Text("App Bar")),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Screen Height = ${height}", style: HeadLine(context)),
          Text("Screen Width = ${width}", style: HeadLine(context)),
          Text("Screen Orientation = ${orientation}", style: HeadLine(context)),
        ],
      ),
    );
  }
}
