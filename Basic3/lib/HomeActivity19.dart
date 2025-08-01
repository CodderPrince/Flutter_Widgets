import 'package:flutter/material.dart';

import 'Fragment/BloodFragment.dart';
import 'Fragment/ContactFragment.dart';
import 'Fragment/EmailFragment.dart';
import 'Fragment/HomeFragment.dart';
import 'Fragment/NoticeFragment.dart';
import 'Fragment/PhoneFragment.dart';
import 'Fragment/ProfileFragment.dart';
import 'Fragment/VillageFragment.dart';
import 'MyAppBar19.dart';

class HomeActivity19 extends StatelessWidget {
  const HomeActivity19({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: MyAppBar19(),

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
          ],
        ),
      ),
    );
  }
}
