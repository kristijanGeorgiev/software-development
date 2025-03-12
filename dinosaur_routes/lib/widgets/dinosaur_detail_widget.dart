import 'package:flutter/material.dart';

class DinosaurDetailWidget extends StatelessWidget {
  final String id;
  final List<String> species;
  final String name;
  final String imageUrl;
  final int speed;
  final int weight;
  final int length;
  final int height;
  final int width;
  final String description;

  const DinosaurDetailWidget({
    super.key,
    required this.id,
    required this.species,
    required this.name,
    required this.imageUrl,
    required this.weight,
    required this.description,
    required this.width,
    required this.length,
    required this.height,
    required this.speed,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 4.0,
        margin: const EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dinosaur Image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.network(
                imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            // Dinosaur Name
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                description,
                style: const TextStyle(fontSize: 16),
              ),
            ),

            const SizedBox(height: 10),

            // Dinosaur Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Species: ${species.join(", ")}',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  Text('Speed: $speed km/h'),
                  Text('Weight: $weight kg'),
                  Text('Length: $length m'),
                  Text('Height: $height m'),
                  Text('Width: $width m'),
                ],
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
