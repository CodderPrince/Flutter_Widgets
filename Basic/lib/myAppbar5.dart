import 'package:basic3/mySnackBar5.dart';
import 'package:flutter/material.dart';

class myAppBar5 extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  const myAppBar5({super.key, required this.title});

  @override
  State<myAppBar5> createState() => _myAppBar5State();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _myAppBar5State extends State<myAppBar5> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      centerTitle: false,
      title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      toolbarHeight: 50,
      elevation: 4.0,
      // A more typical elevation value
      actions: [
        IconButton(
          onPressed: () {
            mySnackBar5("Press the comment icon!", context);
          },
          icon: const Icon(Icons.comment),
          iconSize: 30,
          visualDensity: VisualDensity.compact,
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          color: Colors.white,
          // Default icon color
          focusColor: Colors.blue,
          hoverColor: Colors.orange,
          highlightColor: Colors.red,
          splashColor: Colors.blue,
          disabledColor: Colors.purple,
          onLongPress: () {
            //Text("Long Press",style: TextStyle(color: Colors.red),);
            mySnackBar5("Long Press", context);
          },
          focusNode: FocusNode(),
          autofocus: true,
          tooltip: 'Comment',
          enableFeedback: true,
          constraints: const BoxConstraints.tightFor(width: 50, height: 50),
          splashRadius: 20,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          isSelected: true,
          selectedIcon: const Icon(Icons.comment),
        ),


        IconButton(
          onPressed: () {
            mySnackBar5("Press the search icon!", context);
          },
          icon: const Icon(Icons.search),
          color: Colors.yellow,
          highlightColor: Colors.red,
          splashColor: Colors.blue,
        ),
        IconButton(
          onPressed: () {
            mySnackBar5("Press the settings icon!", context);
          },
          icon: const Icon(Icons.settings),
          color: Colors.yellow,
          highlightColor: Colors.red,
          splashColor: Colors.blue,
        ),
        IconButton(
          onPressed: () {
            mySnackBar5("Press the email icon!", context);
          },
          icon: const Icon(Icons.email),
          color: Colors.yellow,
          highlightColor: Colors.red,
          splashColor: Colors.blue,
        ),
      ],
    );
  }
}
