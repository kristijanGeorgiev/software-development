import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/sea_animal_widget.dart';
class SeaAnimalScreen extends StatelessWidget {
  const SeaAnimalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sea Animals'),
      ),
      body: ListView.builder(
        itemCount: dummySeaAnimals.length,
        itemBuilder: (ctx, index) {
          return SeaAnimalWidget(seaAnimal: dummySeaAnimals[index]);
        },
      ),
    );
  }
}
