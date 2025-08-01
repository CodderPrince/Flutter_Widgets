import 'package:flutter/material.dart';

import 'MyAppBar20.dart';
import 'mySnackBar20.dart';
import 'textStyle20.dart';

class HomeActivity20 extends StatelessWidget {
  const HomeActivity20({super.key});

  @override
  Widget build(BuildContext context) {
    /// Title Text style method

    var MyItems = [
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Prince",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Nahian",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Md. Prince",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "An Nahian",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Raajkumar",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Romeo",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Raajputro",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Prince",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Prince",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Nahian",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Md. Prince",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "An Nahian",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Raajkumar",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Romeo",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Raajputro",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Prince",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Prince",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Nahian",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Md. Prince",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "An Nahian",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Raajkumar",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Romeo",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Raajputro",
      },
      {
        "img":
            "https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg",
        "title": "Prince",
      },
    ];

    return Scaffold(
      appBar: MyAppBar20(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 10,
          childAspectRatio: .6,
        ),
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              mySnackBar20(context, MyItems[index]['title']!);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              // height: 400, // Removed fixed height to allow images to expand
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // Added to ensure Column takes minimum space
                children: [
                  Expanded(
                    // Wrapped Image.network with Expanded to allow it to take available space
                    child: Image.network(
                      MyItems[index]['img']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Changed BoxFit.fill to BoxFit.cover for better aspect ratio
                  Text("${MyItems[index]['title']}", style: textStyle20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
