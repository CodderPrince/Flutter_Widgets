import 'package:flutter/material.dart';

void main() {
  runApp(MyApp12());
}

class MyApp12 extends StatelessWidget {
  const MyApp12({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity12());
  }
}

class HomeActivity12 extends StatelessWidget {
  const HomeActivity12({super.key});

  @override
  Widget build(BuildContext context) {

  /// Title Text style method
    TextStyle textStyle = TextStyle(
      color: Colors.purple, // Custom color
      fontSize: 24, // Custom font size
      fontWeight: FontWeight.bold, // Custom font weight
      fontStyle: FontStyle.italic, // Custom font style
    );

    mySnackBar13( context, message){
      return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message,style: textStyle,),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.grey.shade200,
      )
      );
    }

  var MyItems = [
    {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "Prince"},
    {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "Nahian"},
    {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "Md. Prince"},
    {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "An Nahian"},
    {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "Raajkumar"},
    {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "Romeo"},
    {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "Raajputro"},
    {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "Prince"},
  ];

    return Scaffold(
      appBar: AppBar(title: Text("My APP")),
      body: ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context, index){
        return GestureDetector(
          onTap: (){
            mySnackBar13(context, MyItems[index]['title']!);

          },
          child: Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            // height: 400, // Removed fixed height to allow images to expand
            child: Column(
              children: [
                Image.network(MyItems[index]['img']!,fit: BoxFit.cover,), // Changed BoxFit.fill to BoxFit.cover for better aspect ratio
                Text("${MyItems[index]['title']}",
                style: textStyle
                ),
              ],
            ),
          ),
        );
        },
      ),
    );
  }
}
