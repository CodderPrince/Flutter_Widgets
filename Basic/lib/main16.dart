import 'package:flutter/material.dart';

void main() {
  runApp(MyApp16());
}

class MyApp16 extends StatelessWidget {
  const MyApp16({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity16());
  }
}

class HomeActivity16 extends StatelessWidget {
  const HomeActivity16({super.key});

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
      {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "Prince"},
      {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "Nahian"},
      {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "Md. Prince"},
      {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "An Nahian"},
      {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "Raajkumar"},
      {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "Romeo"},
      {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "Raajputro"},
      {"img" : "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", "title" : "Prince"},
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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 2,mainAxisSpacing: 10,
        childAspectRatio: .6),
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
                mainAxisSize: MainAxisSize.min, // Added to ensure Column takes minimum space
                children: [
                  Expanded( // Wrapped Image.network with Expanded to allow it to take available space
                      child: Image.network(MyItems[index]['img']!,fit: BoxFit.cover,)), // Changed BoxFit.fill to BoxFit.cover for better aspect ratio
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
