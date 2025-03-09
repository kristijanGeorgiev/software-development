import 'package:flutter/material.dart';
import '../models/dinosaur.dart';

class DinosaurDetailWidget extends StatelessWidget {
  final Dinosaur dinosaur;

  const DinosaurDetailWidget({super.key, required this.dinosaur});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(10.0),
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
              dinosaur.description,
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatItem("Height", "${dinosaur.height} m"),
                _buildStatItem("Width", "${dinosaur.width} m"),
                _buildStatItem("Length", "${dinosaur.length} m"),
                _buildStatItem("Weight", "${dinosaur.weight} kg"),
                _buildStatItem("Speed", "${dinosaur.speed} km/h"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 12, color: Colors.grey[700]),
        ),
      ],
    );
  }
}