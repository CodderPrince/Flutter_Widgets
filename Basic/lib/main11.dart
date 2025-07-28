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

  // Helper function for showing Snack Bar
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            color: Colors.white, // Change text color here
            fontSize: 20, // Change text size here
          ),),
        duration: Duration(milliseconds: 500),
        backgroundColor: Colors.teal,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  MyAlertDialog(context)
  {
    return showDialog(
        context: context,
        builder: (BuildContext context)
        {
          return Expanded(
              child: AlertDialog(
                backgroundColor: Colors.brown,
                title: Text("Alert🚨",style: TextStyle(color: Colors.white,fontSize: 30)),
                content: Text("Do you want to delete?",style: TextStyle(color: Colors.white,fontSize: 20)),
                actions: [
                  TextButton(onPressed: (){ Navigator.of(context).pop();}, child: Text("No",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  TextButton(onPressed: (){_showSnackBar("Delete Success!"); Navigator.of(context).pop();}, child: Text("Yes",style: TextStyle(color: Colors.white,fontSize: 20))),
                ],
              )
          );
        }
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Show Snack Bar based on the tapped icon
    if (index == 0) {
      _showSnackBar("Chat icon tapped!");
    } else if (index == 1) {
      _showSnackBar("Person icon tapped!");
    } else if (index == 2) {
      _showSnackBar("Donate icon tapped!");
    } else if (index == 3) {
      _showSnackBar("Notice icon tapped!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisSize: MainAxisSize.min, // So content is centered nicely
          children: [
            InkWell(
              onTap: () {
                //_showSnackBar("Location icon tapped!");
                MyAlertDialog(context);
              },
              child: Icon(Icons.location_on, color: Colors.purple, size: 28),
            ),

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
          IconButton(onPressed: (){_showSnackBar("Profile icon tapped!");}, icon: Icon(Icons.account_circle_rounded,size: 35,))
        ],

      ),
      drawer: Drawer(
        width: 300,
        child: ListView(
          children: [
            //DrawerHeader(child: Text("PRINCE")),
            SizedBox(
              height: 185,
              child: DrawerHeader(
                padding: EdgeInsets.all(1),
              child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
              
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
              color: Colors.teal,
                      ),
                      accountName: Padding(
                        padding: const EdgeInsets.only(top: 0.0), // Add space above accountName
                        child: Text("Md. An Nahian Prince",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                      // accountName: Text("Md. An Nahian Prince",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 20),),
                      // Add SizedBox for spacing between accountName and accountPicture
                      // currentAccountPictureSize: Size.square(72), // You can adjust this if needed
              
                      accountEmail: Text("cse12105007brur@gmail.com",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14)),
              
                currentAccountPicture: Padding(
                  padding: const EdgeInsets.only(bottom: 0.0),
                  child: CircleAvatar(
                    radius: 30, // Adjust the size as needed
                    backgroundImage: NetworkImage("https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg"),
                    // You can also use Image.network inside a ClipOval for more control if needed
                    // child: ClipOval(
                    //   child: Image.network("https://raw.githubusercontent.com/CodderPrince/Images/main/IMG_20241129_162111_462.jpg", fit: BoxFit.cover, width: 60, height: 60,),
                    // ),
                  ),
                ),
              ),
                      ),
            ),


            ListTile(leading: Icon(Icons.home,color: Colors.blue,), title: Text("Home"),
              onTap: () {
                _showSnackBar("Home icon tapped!");
              },),
            ListTile(leading: Icon(Icons.contact_mail,color: Colors.blue), title: Text("Contact"),
              onTap: () {
                _showSnackBar("Contact icon tapped!");
              },
            ),
            ListTile(leading: Icon(Icons.person,color: Colors.blue), title: Text("Profile"),
              onTap: () {
                _showSnackBar("Profile icon tapped!");
              },
            ),
            ListTile(leading: Icon(Icons.email,color: Colors.blue), title: Text("Email"),
              onTap: () {
                _showSnackBar("Email icon tapped!");
              },
            ),
            ListTile(leading: Icon(Icons.phone,color: Colors.blue), title: Text("Phone"),
              onTap: () {
                _showSnackBar("Phone icon tapped!");
              },
            ),
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
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(8),

                      ),
                      width: 100,
                      height: 85,
                      child: Column(
                        children: [
                          Icon(Icons.business,color: Colors.black,size: 30,),
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
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex, // <- CURRENT INDEX
        onTap: _onItemTapped, // <- HANDLE TAP
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat, size: 30), label: "Chat",),
          BottomNavigationBarItem(icon: Icon(Icons.person, size: 30), label: "Person"),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on, size: 30), label: "Donate"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications, size: 30), label: "Notice"),
        ],

      ),
    );
  }
}
