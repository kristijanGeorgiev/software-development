import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/car_widget.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cars'),
      ),
      body: ListView.builder(
        itemCount: dummyCars.length,
        itemBuilder: (ctx, index) {
          return CarWidget(car: dummyCars[index]);
        },
      ),
    );
  }
}