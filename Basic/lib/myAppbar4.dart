import 'package:basic3/mySnackBar4.dart';
import 'package:flutter/material.dart';

class myAppBar4 extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const myAppBar4({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      centerTitle: false,
      title: Text(title, style: const TextStyle(color: Colors.white)),
      toolbarHeight: 50,
      elevation: 4.0, // A more typical elevation value
      actions: [
        IconButton(onPressed: (){mySnackBar4("Press the comment icon!", context);}, icon: Icon(Icons.comment),color: Colors.yellow,),
        IconButton(onPressed: (){mySnackBar4("Press the search icon!", context);}, icon: Icon(Icons.search), color: Colors.yellow,),
        IconButton(onPressed: (){mySnackBar4("Press the settings icon!", context);}, icon: Icon(Icons.settings), color: Colors.yellow),
        IconButton(onPressed: (){mySnackBar4("Press the email icon!", context);}, icon: Icon(Icons.email), color: Colors.yellow),

      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
