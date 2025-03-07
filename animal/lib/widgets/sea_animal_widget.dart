import 'package:flutter/material.dart';
import '../models/animal.dart';

class SeaAnimalWidget extends StatelessWidget {
  final SeaAnimal seaAnimal;
  const SeaAnimalWidget({super.key, required this.seaAnimal});

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
              seaAnimal.image,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          ListTile(
            title: Text('${seaAnimal.name} ${seaAnimal.weight}', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Length : ${seaAnimal.length}'),
          ),
        ],
      ),
    );
  }
}