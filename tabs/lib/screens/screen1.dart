import 'package:flutter/material.dart';
import 'package:tabs/screens/screen2.dart';
void navigateToScreen(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: OutlinedButton.icon(
          icon: const Icon(Icons.pages, color: Color.fromARGB(234, 255, 100, 223)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.black, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, Screen2()),
          label: const Text('Screen 2'),
        ),
      ),
    );
  }
}