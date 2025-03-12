import 'package:flutter/material.dart';
import '../models/dinosaur.dart';
import '../screens/dinosaur_detail_screen.dart';// Import the meal detail screen

class DinosaurWidget extends StatelessWidget {
  final Dinosaur dinosaur;

  const DinosaurWidget({super.key, required this.dinosaur});

  void _selectDinosaur(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DinosaurDetailScreen(dinosaur: dinosaur),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectDinosaur(context),
      borderRadius: BorderRadius.circular(15),
      child: Card(
        elevation: 4.0,
        margin: const EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.network(
                dinosaur.imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                dinosaur.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}