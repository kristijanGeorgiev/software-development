import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/fordcar_widget.dart';

class FordCarScreen extends StatelessWidget {
  const FordCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ford Cars'),
      ),
      body: ListView.builder(
        itemCount: dummyFordCars.length,
        itemBuilder: (ctx, index) {
          return FordCarWidget(fordCar: dummyFordCars[index]);
        },
      ),
    );
  }
}
