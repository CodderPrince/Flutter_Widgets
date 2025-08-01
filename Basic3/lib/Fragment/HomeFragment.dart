import 'package:flutter/cupertino.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Home",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
