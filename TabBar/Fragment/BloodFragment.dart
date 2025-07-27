import 'package:flutter/cupertino.dart';

class BloodFragment extends StatelessWidget{
  const BloodFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Blood",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
    );
  }
  
}