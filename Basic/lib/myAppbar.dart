import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MyAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      centerTitle: true,
      title: Text(title, style: const TextStyle(color: Colors.white)),
      toolbarHeight: 50,
      elevation: 4.0, // A more typical elevation value
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
