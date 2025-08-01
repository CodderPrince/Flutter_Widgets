import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Fragment/BloodFragment.dart';
import 'Fragment/ContactFragment.dart';
import 'Fragment/EmailFragment.dart';
import 'Fragment/HomeFragment.dart';
import 'Fragment/NoticeFragment.dart';
import 'Fragment/PhoneFragment.dart';
import 'Fragment/ProfileFragment.dart';
import 'Fragment/VillageFragment.dart';

void main() {
  runApp(MyApp17());
}

class MyApp17 extends StatelessWidget {
  const MyApp17({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity17(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity17 extends StatelessWidget {
  const HomeActivity17({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisSize: MainAxisSize.min, // So content is centered nicely
            children: [
              InkWell(
                onTap: () {
                  //_showSnackBar("Location icon tapped!");
                },
                child: Icon(Icons.location_on, color: Colors.purple, size: 28),
              ),

              SizedBox(width: 8), // Space between icon and text
              ShaderMask(
                shaderCallback:
                    (bounds) => LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                child: Text(
                  "My App Bar",
                  style: TextStyle(
                    color: Colors.white, // Required for ShaderMask
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
              tabs:[
                Tab(icon: Icon(Icons.home,color: Colors.blue,),text: "Home",),
                Tab(icon: Icon(Icons.contact_mail,color: Colors.blue),text: "Contact",),
                Tab(icon: Icon(Icons.person,color: Colors.blue),text: "Profile",),
                Tab(icon: Icon(Icons.email,color: Colors.blue),text: "Email",),
                Tab(icon: Icon(Icons.phone,color: Colors.blue),text: "Phone",),
                Tab(icon: Icon(Icons.groups_sharp,color: Colors.blue),text: "Village",),
                Tab(icon: Icon(Icons.bloodtype,color: Colors.red),text: "Blood",),
                Tab(icon: Icon(Icons.add_alert,color: Colors.orange),text: "Notice",),

              ]

          ),
        ),
        body: TabBarView(
            children: [
              HomeFragment(),
              ContactFragment(),
              ProfileFragment(),
              EmailFragment(),
              PhoneFragment(),
              VillageFragment(),
              BloodFragment(),
              NoticeFragment(),

            ]
        ),
      ),
    );
  }
}
