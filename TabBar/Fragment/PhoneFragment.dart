
import 'package:flutter/cupertino.dart';

class PhoneFragment extends StatelessWidget {
  const PhoneFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Phone",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
