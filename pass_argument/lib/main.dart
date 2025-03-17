import 'package:flutter/material.dart';
import 'package:pass_argument/detailargument.dart';
import 'package:pass_argument/detailscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        'detail': (context) => DetailScreen(title: 'Detail Screen', id: 1, price: 210.3)
      },
      home: const MyHomePage(title: 'Navigation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, 'detail', arguments: DetailArguments(id: 45, title: 'Detail Argument ', price: 75.45));
          }, child: Text('Go To Detail Argument Screen'))
      ),
    );
  }
}
