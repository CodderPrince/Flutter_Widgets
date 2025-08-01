import 'package:flutter/cupertino.dart';

class NoticeFragment extends StatelessWidget {
  const NoticeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Notice",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
