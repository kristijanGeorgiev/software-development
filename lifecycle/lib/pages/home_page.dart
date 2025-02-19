import 'package:lifecycle/lifecycle_manager.dart';
import 'package:flutter/material.dart';
import 'example_page.dart';
// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key,  required this.counter, required this.onPress});

  int counter;
  final Function() onPress;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return LifeCycleManager(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
          title: const Text("Flutter Lifecycle", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ExamplePage()));
              }, child: const Text("Navigate to new route")),
              const SizedBox(height: 8.0),
              ElevatedButton(onPressed: widget.onPress, child: const Text("Reset count"))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
