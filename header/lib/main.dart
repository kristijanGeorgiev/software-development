import 'package:flutter/material.dart';
import 'package:header/pages/dolphins.dart';
import 'package:header/pages/fishes.dart';
import 'package:header/pages/ocean.dart';
import 'package:header/pages/rays.dart';
import 'package:header/pages/sharks.dart';
import 'package:header/pages/whales.dart';

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
                leading: const Icon(Icons.info),
                title: const Text('Dolphin'),
                onTap: () => navigateToScreen(context, OceanPage()),
              ),
              ListTile(
                leading: const Icon(Icons.call),
                title: const Text('Fish'),
                onTap: () => navigateToScreen(context, SharkPage()),
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Ocean'),
                onTap: () => navigateToScreen(context, WhalePage()),
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: const Text('Ray'),
                onTap: () => navigateToScreen(context, RayPage()),
              ),
              ListTile(
                leading: const Icon(Icons.accessible),
                title: const Text('Shark'),
                onTap: () => navigateToScreen(context, DolphinPage()),
              ),
              ListTile(
                leading: const Icon(Icons.backpack),
                title: const Text('Whale'),
                onTap: () => navigateToScreen(context, FishPage()),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DolphinPage(),
            FishPage(),
            OceanPage(),
            RayPage(),
            SharkPage(),
            WhalePage(),
          ],
        ),
        bottomNavigationBar: const TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.info), text: "Dolphin"),
            Tab(icon: Icon(Icons.call), text: "Fish"),
            Tab(icon: Icon(Icons.help), text: "Ocean"),
            Tab(icon: Icon(Icons.message), text: "Ray"),
            Tab(icon: Icon(Icons.accessible), text: "Shark"),
            Tab(icon: Icon(Icons.backpack), text: "Whale"),
          ],
        ),
      ),
    );
  }
}
