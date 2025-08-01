import 'package:flutter/cupertino.dart';

class ContactFragment extends StatelessWidget {
  const ContactFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Contact",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
