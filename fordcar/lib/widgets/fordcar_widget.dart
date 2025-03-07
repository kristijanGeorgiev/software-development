import 'package:flutter/material.dart';
import '../models/fordcar.dart';
import 'package:fordcar/dummy_data.dart';

class FordCarWidget extends StatelessWidget {
  final FordCar fordCar;
  const FordCarWidget({super.key, required this.fordCar});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Make: ${fordCar.make}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Model: ${fordCar.model}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Year: ${fordCar.year}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Ford Specific Feature: ${fordCar.fordSpecificFeature}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
