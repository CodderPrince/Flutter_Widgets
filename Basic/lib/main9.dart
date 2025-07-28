import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomeActivity(),
   );
  }




}
class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // You can also navigate or switch widgets based on index here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisSize: MainAxisSize.min, // So content is centered nicely
          children: [
            Icon(Icons.location_on, color: Colors.purple, size: 28),
            SizedBox(width: 8), // Space between icon and text
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: Text(
                "Baghadanga",
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
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.account_circle_rounded,size: 35,))
        ],

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("PRINCE")),
            ListTile(title: Text("Home"),),
            ListTile(title: Text("Contact"),),
            ListTile(title: Text("Profile"),),
            ListTile(title: Text("Email"),),
            ListTile(title: Text("Phone"),),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/GithubCover.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 40),
                Text("❤️ Together we grow",
                  style: TextStyle(fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(8),

                      ),
                      width: 100,
                      height: 85,
                      child: Column(
                        children: [
                          Icon(Icons.groups_sharp,color: Colors.blue,size: 30,),
                          Text("  Village\nDirectory",
                            style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(width: 40),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(8),

                      ),
                      width: 100,
                      height: 85,
                      child: Column(
                        children: [
                          Icon(Icons.bloodtype,color: Colors.red,size: 30,),
                          Text("Blood Donor\n    Network",
                            style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(width: 40),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(
                            255, 198, 104, 0.2),
                        borderRadius: BorderRadius.circular(8),

                      ),
                      width: 100,
                      height: 85,
                      child: Column(
                        children: [
                          Icon(Icons.add_alert,color: Colors.orange,size: 30,),
                          Text(" Emergency\n    Notices",
                            style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(8),

                      ),
                      width: 100,
                      height: 85,
                      child: Column(
                        children: [
                          Icon(Icons.cast_for_education,color: Colors.green,size: 30,),
                          Text("  Education",
                            style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(width: 40),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(8),

                      ),
                      width: 100,
                      height: 85,
                      child: Column(
                        children: [
                          Icon(Icons.location_on_rounded,color: Colors.purple,size: 30,),
                          Text("Places to\n    Visit",
                            style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(width: 40),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(
                            108, 183, 249, 0.2),
                        borderRadius: BorderRadius.circular(8),

                      ),
                      width: 100,
                      height: 85,
                      child: Column(
                        children: [
                          Icon(Icons.work_history,color: Colors.blue,size: 30,),
                          Text("Work & Skills",
                            style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.pink.shade50,
                        borderRadius: BorderRadius.circular(8),

                      ),
                      width: 100,
                      height: 85,
                      child: Column(
                        children: [
                          Icon(Icons.calendar_month,color: Colors.pink,size: 30,),
                          Text("Social Events",
                            style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(width: 40),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade50,
                        borderRadius: BorderRadius.circular(8),

                      ),
                      width: 100,
                      height: 85,
                      child: Column(
                        children: [
                          Icon(Icons.clean_hands,color: Colors.red,size: 30,),
                          Text("Donations",
                            style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(width: 40),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal.shade50,
                        borderRadius: BorderRadius.circular(8),

                      ),
                      width: 100,
                      height: 85,
                      child: Column(
                        children: [
                          Icon(Icons.add_business_outlined,color: Colors.teal,size: 30,),
                          Text("   Local\nBusiness",
                            style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent.withOpacity(.3),
                        borderRadius: BorderRadius.circular(8),

                      ),
                      width: 100,
                      height: 85,
                      child: Column(
                        children: [
                          Icon(Icons.energy_savings_leaf,color: Colors.green.shade600,size: 30,),
                          Text("Agricultural",
                            style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(width: 40),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(8),

                      ),
                      width: 100,
                      height: 85,
                      child: Column(
                        children: [
                          Icon(Icons.newspaper,color: Colors.blue,size: 30,),
                          Text("News",
                            style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                    ),
                    SizedBox(width: 40),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(8),

                      ),
                      width: 100,
                      height: 85,
                      child: Column(
                        children: [
                          Icon(Icons.business,color: Colors.grey,size: 30,),
                          Text("Organizations",
                            style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 200),
              ],
            ),
          ),
        ),

      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex, // <- CURRENT INDEX
        onTap: _onItemTapped, // <- HANDLE TAP
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat, size: 30), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person, size: 30), label: "Person"),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on, size: 30), label: "Donate"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications, size: 30), label: "Notice"),
        ],
      ),
    );
  }
}
