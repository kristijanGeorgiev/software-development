import 'package:excercise3/home.dart';
import 'package:flutter/material.dart';
import 'call.dart';
import 'help.dart';
import 'info.dart';
import 'message.dart';
import 'continent.dart';
import 'geography.dart';
void main() {
  runApp(MyApp());
}
void navigateToScreen(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7, // Number of tabs
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
          elevation: 4, // Adds shadow
        ),
        body: TabBarView(
          children: [
            HomePage(),
            InfoScreen(),
            CallScreen(),
            HelpScreen(),
            MessageScreen(),
            ContinentPage(),
            GeographyPage()
          ],
        ),
          bottomSheet: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.info), text: "Info"),
              Tab(icon: Icon(Icons.call), text: "Call"),
              Tab(icon: Icon(Icons.help), text: "Help"),
              Tab(icon: Icon(Icons.message), text: "Message"),
              Tab(icon: Icon(Icons.accessible), text: "Continent"),
              Tab(icon: Icon(Icons.backpack), text: "Geography")
            ],
          )
      ),
    );
  }
}