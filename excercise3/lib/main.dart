import 'package:flutter/material.dart';
import 'call.dart';
import 'help.dart';
import 'home.dart';
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
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Custom AppBar",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green, Colors.orange],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          elevation: 4,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () => navigateToScreen(context, HomePage()),
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('Info'),
                onTap: () => navigateToScreen(context, InfoScreen()),
              ),
              ListTile(
                leading: const Icon(Icons.call),
                title: const Text('Call'),
                onTap: () => navigateToScreen(context, CallScreen()),
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help'),
                onTap: () => navigateToScreen(context, HelpScreen()),
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: const Text('Message'),
                onTap: () => navigateToScreen(context, MessageScreen()),
              ),
              ListTile(
                leading: const Icon(Icons.accessible),
                title: const Text('Continent'),
                onTap: () => navigateToScreen(context, ContinentPage()),
              ),
              ListTile(
                leading: const Icon(Icons.backpack),
                title: const Text('Geography'),
                onTap: () => navigateToScreen(context, GeographyPage()),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomePage(),
            InfoScreen(),
            CallScreen(),
            HelpScreen(),
            MessageScreen(),
            ContinentPage(),
            GeographyPage(),
          ],
        ),
        bottomNavigationBar: const TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.home), text: "Home"),
            Tab(icon: Icon(Icons.info), text: "Info"),
            Tab(icon: Icon(Icons.call), text: "Call"),
            Tab(icon: Icon(Icons.help), text: "Help"),
            Tab(icon: Icon(Icons.message), text: "Message"),
            Tab(icon: Icon(Icons.accessible), text: "Continent"),
            Tab(icon: Icon(Icons.backpack), text: "Geography"),
          ],
        ),
      ),
    );
  }
}