import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     Center(
//       child: Text(
//         "The Quick Brown Fox Jumps Over The Lazy Dog",
//         textDirection: TextDirection.ltr,
//         style: TextStyle(fontSize: 55,color: Colors.purple,fontWeight: FontWeight.w300,overflow: TextOverflow.fade),
//       ),
//     ),
//   );
// }

void main() {
  runApp(
    MaterialApp(
      title: "Flutter Basic Learning!",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Ostad Flutter app",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   // children: [
          //   //
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   Text("Hello world"),
          //   //   SingleChildScrollView(
          //   //     child: Column(
          //   //       children: [
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //         Text("Hello world"),
          //   //       ],
          //   //     ),
          //   //   ),
          //   // ],
          //   children: [
          //     Center(
          //       child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //           backgroundColor: Colors.blue,
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(10),
          //           ),
          //         ),
          //         onPressed: () {
          //           print("This is a button");
          //         },
          //         child: Text(
          //           "Button 1",
          //           style: TextStyle(color: Colors.white, fontSize: 25),
          //         ),
          //       ),
          //     ),
          //     Icon(Icons.person, size: 50, color: Colors.red),
          //     Center(
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Center(
          //             child: ElevatedButton(
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: Colors.green,
          //                 shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(10),
          //                 ),
          //               ),
          //               onPressed: () {},
          //               child: Text(
          //                 "Send",
          //                 style: TextStyle(color: Colors.white, fontSize: 25),
          //               ),
          //
          //             ),
          //           ),
          //           Icon(Icons.send, size: 50, color: Colors.red),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          child: Column(
            children: [
              TextButton(onPressed: (){}, child: Text("Click Me",style: TextStyle(color: Colors.blue,fontSize: 25),)),
              IconButton(onPressed: (){print("Pressed Icon Button");}, icon: Icon(Icons.add_a_photo, size: 50, color: Colors.red,)),

              InkWell(
                onTap: (){
                  print("Single Tap");
                },
                onDoubleTap: (){
                  print("Double Tap");
                },
                onLongPress: () {
                  print("Long Press");
                },
                onHover: (value) {
                  print("Hover");
                },
                child: Container(
                  height: 200,
                  width: 200,
                  //color: Colors.grey,
                  margin: EdgeInsets.only(left: 24),
                  //padding: EdgeInsets.only(left: 25,top: 25),
                  padding: EdgeInsets.all(25),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black54,width: 5),
                    gradient: LinearGradient(colors: [Colors.red.shade500,Colors.blue.withOpacity(0.5),Colors.green],
                    begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 25,
                        offset: Offset(5,5),
                        spreadRadius: 5,
                      )
                    ]
                  ),
                  child: Text("This is a Container",style: TextStyle(color: Colors.white,fontSize: 25),),
                ),
              ),
              SizedBox( height: 15),
              GestureDetector(
                onTap: (){
                  print("Single Tap");
                },
                onDoubleTap: (){
                  print("Double Tap");
                },
                onLongPress: () {
                  print("Long Press");
                },

                child: Container(
                  height: 200,
                  width: 200,
                  //color: Colors.grey,
                  margin: EdgeInsets.only(left: 24),
                  //padding: EdgeInsets.only(left: 25,top: 25),
                  padding: EdgeInsets.all(25),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.black54,width: 5),
                      gradient: LinearGradient(colors: [Colors.red,Colors.yellow.withOpacity(0.5),Colors.green],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 25,
                          offset: Offset(5,5),
                          spreadRadius: 5,
                        )
                      ]
                  ),
                  child: Text("This is a Container",style: TextStyle(color: Colors.white,fontSize: 25),),
                ),
              ),

            ],

          ),

        ),
      ),
    ),
  );
}
