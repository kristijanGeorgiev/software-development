import 'package:flutter/material.dart';
import 'package:tabs/screens/screen1.dart';
void navigateToScreen(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}
class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: OutlinedButton.icon(
          icon: const Icon(Icons.home, color: Color.fromARGB(234, 255, 100, 223)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.black, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, Screen1()),
          label: const Text('Home'),
        ),
      ),
    );
  }
}