import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Custom AppBar",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true, // Centers the title
          leading: IconButton(
            icon: Icon(Icons.menu), // Hamburger menu
            onPressed: () {
              // Handle menu action
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle search action
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Handle settings action
              },
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green, Colors.orange],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.explore), text: "Explore"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
            ],
          ),
          elevation: 4, // Adds shadow
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Home")),
            Center(child: Text("Explore")),
            Center(child: Text("Profile")),
          ],
        ),
          bottomSheet: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.explore), text: "Explore"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
            ],
          )
      ),
    );
  }
}
