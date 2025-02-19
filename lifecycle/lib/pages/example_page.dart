import 'package:flutter/material.dart';
import 'package:lifecycle/pages/home_page.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Example Route",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage(counter: 0, onPress: () {  },)));
        }, child: const Text("Back To Home Page")),
      ),
    );
  }
}
