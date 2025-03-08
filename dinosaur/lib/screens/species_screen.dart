import 'package:dinosaur/widgets/species_item.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

class SpeciesScreen extends StatelessWidget {
  const SpeciesScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Species'),
      ),
      body: ListView.builder(
        itemCount: DUMMY_SPECIES.length,
        itemBuilder: (ctx, index) {
          return SpeciesItemWidget(species: DUMMY_SPECIES[index]);
        },
      ),
    );
  }
}