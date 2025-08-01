import 'package:flutter/material.dart';

import 'MyAppBar20.dart';
import 'MyAppBar21.dart';
import 'mySnackBar20.dart';
import 'mySnackBar21.dart';
import 'textStyle20.dart';
import 'textStyle21.dart';

class HomeActivity21 extends StatelessWidget {
  const HomeActivity21({super.key});

  @override
  Widget build(BuildContext context) {
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
      appBar: MyAppBar21(),
      body: ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              mySnackBar21(context, MyItems[index]['title']!);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 400,
              child: Image.network(MyItems[index]['img']!, fit: BoxFit.cover),
            ),
          );
        },
      ),
    );
  }
}
