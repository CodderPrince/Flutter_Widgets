import 'package:flutter/material.dart';

PreferredSizeWidget MyAppBar19() {
  return AppBar(
    elevation: 8,
    backgroundColor: Colors.transparent,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromRGBO(107, 48, 0, 1.0), Colors.lightGreen, Colors.blueGrey, Colors.teal, Colors.deepPurple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
    ),
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
      onPressed: () {
        // Add your back navigation logic here
      },
    ),
    title: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.location_on, color: Colors.white, size: 28),
        const SizedBox(width: 8),
        ShaderMask(
          shaderCallback:
              (bounds) => const LinearGradient(
                colors: [Colors.yellow, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
          child: const Text(
            "Baghadanga",
            style: TextStyle(
              color: Colors.white, // Still needed for ShaderMask
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    centerTitle: true,
    actions: [
      // 🔍 Search
      IconButton(
        icon: const Icon(Icons.search, color: Colors.white),
        onPressed: () {
          // Search functionality
        },
      ),

      // 🔔 Notifications with Badge
      Stack(
        children: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Notification logic
            },
          ),
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
              child: const Text(
                '3', // Example badge count
                style: TextStyle(color: Colors.white, fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),

      // 👤 Profile Icon (Original Feature)
      const IconButton(
        onPressed: null,
        icon: Icon(Icons.account_circle_rounded, size: 35, color: Colors.white),
      ),

      // ⋮ Popup Menu
      PopupMenuButton<String>(
        icon: const Icon(Icons.more_vert, color: Colors.white),
        onSelected: (value) {
          if (value == 'settings') {
            // Go to settings
          } else if (value == 'logout') {
            // Logout logic
          }
        },
        itemBuilder:
            (context) => const [
              PopupMenuItem(value: 'settings', child: Text('Settings')),
              PopupMenuItem(value: 'logout', child: Text('Logout')),
            ],
      ),
    ],
    bottom: TabBar(
        isScrollable: true,
        labelColor: Colors.yellow,
        indicatorWeight: 3.0,

        unselectedLabelColor: Colors.white70, // Dim unselected tab text
        indicatorColor: Colors.yellow, // Color of the underline
        tabs:[
          const Tab(
            icon: Icon(Icons.home, color: Colors.white, size: 26), // Increased icon size
            child: Text(
              "Home",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Increased text size and bold
            ),
          ),
          const Tab(
            icon: Icon(Icons.contact_mail, color: Colors.white, size: 26),
            child: Text(
              "Contact",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const Tab(
            icon: Icon(Icons.person, color: Colors.white, size: 26),
            child: Text(
              "Profile",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const Tab(
            icon: Icon(Icons.email, color: Colors.white, size: 26),
            child: Text(
              "Email",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const Tab(
            icon: Icon(Icons.phone, color: Colors.white, size: 26),
            child: Text(
              "Phone",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const Tab(
            icon: Icon(Icons.groups_sharp, color: Colors.white, size: 26),
            child: Text(
              "Village",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const Tab(
            icon: Icon(Icons.bloodtype, color: Colors.red, size: 26),
            child: Text(
              "Blood",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const Tab(
            icon: Icon(Icons.add_alert, color: Colors.orange, size: 26),
            child: Text(
              "Notice",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ]
    ),
  );
}
