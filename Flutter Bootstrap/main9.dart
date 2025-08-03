import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

void main() {
  runApp(MyApp8());
}

class MyApp8 extends StatelessWidget {
  const MyApp8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Bootstrap",
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
        child: BootstrapContainer(
          fluid: true,
          children: [
            BootstrapRow(
              height: 100,
              children: [
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md 3 col-sm 4 col-6',
                  child: Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md 3 col-sm 4 col-6',
                  child: Container(
                    color: Colors.blue,
                    height: 100,
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md 3 col-sm 4 col-6',
                  child: Container(
                    color: Colors.orange,
                    height: 100,
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md 3 col-sm 4 col-6',
                  child: Container(
                    color: Colors.greenAccent,
                    height: 100,
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md 3 col-sm 4 col-6',
                  child: Container(
                    color: Colors.black,
                    height: 100,
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md 3 col-sm 4 col-6',
                  child: Container(
                    color: Colors.purple,
                    height: 100,
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md 3 col-sm 4 col-6',
                  child: Container(
                    color: Colors.pink,
                    height: 100,
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md 3 col-sm 4 col-6',
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md 3 col-sm 4 col-6',
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md 3 col-sm 4 col-6',
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md 3 col-sm 4 col-6',
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md 3 col-sm 4 col-6',
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),

              ],
            )
          ],
        )
      ),
    );
  }
}
