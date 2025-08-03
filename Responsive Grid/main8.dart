import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

void main() {
  runApp(MyApp8());
}

class MyApp8 extends StatelessWidget {
  const MyApp8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Responsive Grid",
      home: HomeActivity1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity1 extends StatelessWidget {
  const HomeActivity1({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("App Bar")),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              lg: 12,
              child: Container(
                height: 100,
                color: Colors.orange,
              ),
            ),
            ResponsiveGridCol(
              xl: 4,
              lg: 6,
              md: 8,
              sm: 9,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.red,
              ),
            ),
            ResponsiveGridCol(
              xl: 3,
              lg: 3,
              md: 3,
              sm: 12,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.green,
              ),
            ),
            ResponsiveGridCol(
              xl: 4,
              lg: 6,
              md: 8,
              sm: 9,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.black,
              ),
            ),
            ResponsiveGridCol(
              xl: 4,
              lg: 6,
              md: 8,
              sm: 9,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),
            ResponsiveGridCol(
              xl: 4,
              lg: 6,
              md: 8,
              sm: 9,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),
            ResponsiveGridCol(
              xl: 4,
              lg: 6,
              md: 8,
              sm: 9,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),
            ResponsiveGridCol(
              xl: 4,
              lg: 6,
              md: 8,
              sm: 9,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),
            ResponsiveGridCol(
              xl: 4,
              lg: 6,
              md: 8,
              sm: 9,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),
            ResponsiveGridCol(
              xl: 4,
              lg: 6,
              md: 8,
              sm: 9,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),
            ResponsiveGridCol(
              xl: 4,
              lg: 6,
              md: 8,
              sm: 9,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),
            ResponsiveGridCol(
              xl: 4,
              lg: 6,
              md: 8,
              sm: 9,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),
            ResponsiveGridCol(
              xl: 4,
              lg: 6,
              md: 8,
              sm: 9,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),
            ResponsiveGridCol(
              xl: 4,
              lg: 6,
              md: 8,
              sm: 9,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),
            ResponsiveGridCol(
              xl: 4,
              lg: 6,
              md: 8,
              sm: 9,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),
            ResponsiveGridCol(
              xl: 4,
              lg: 6,
              md: 8,
              sm: 9,
              xs: 12,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),





          ],
        ),
      )
    );
  }
}
