import 'package:flutter/material.dart';
import '../models/car.dart';

class CarWidget extends StatelessWidget {
  final Car car;

  const CarWidget({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          ListTile(
            title: Text('${car.make} ${car.model}', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Year: ${car.year}'),
          ),
        ],
      ),
    );
  }
}