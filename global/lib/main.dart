import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter with GlobalKey',
      home: FirstPage(),
    );
  }
}

// GlobalKey to access CounterWidget's state
final GlobalKey<CounterState> counterKey = GlobalKey<CounterState>();

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),), backgroundColor: Colors.redAccent,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CounterWidget(key: counterKey), // Attach the GlobalKey
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ),
              );
            },
            child: Text('Go to Second Page'),
          ),
        ],
      ),
    );
  }
}

// Counter Widget
class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  CounterState createState() => CounterState();
}

class CounterState extends State<CounterWidget> {
  int _count = 0;

  void increment() {
    setState(() {
      _count++;
    });
  }

  int get count => _count; // Expose count value

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Counter: $_count', style: TextStyle(fontSize: 24)),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: increment,
          child: Text('Increment The Value'),
        ),
      ],
    );
  }
}
// Second Page
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    int countValue = counterKey.currentState?.count ?? 0; // Access count

    return Scaffold(
      appBar: AppBar(title: Text('Second Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),), backgroundColor: Colors.redAccent,),
      body: Center(
        child: Text(
          'Counter Value: $countValue',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}


