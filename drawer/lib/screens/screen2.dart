import 'package:flutter/material.dart';
import 'package:proba2/screens/screen1.dart';

import 'myhomepage.dart';
class Screen2 extends StatefulWidget {
  const Screen2({super.key, required this.title});

  final String title;

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Whale', style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
                'Screen 2'
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text('Title'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () => navigateToScreen(context, MyHomePage(title: 'Home')),
            ),
            ListTile(
              title: const Text('Screen 1'),
              onTap: () => navigateToScreen(context, Screen1(title: 'Screen 1')),
            ),
            ListTile(
              title: const Text('Screen 2'),
              onTap: () => navigateToScreen(context, Screen2(title: 'Screen 2')),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}