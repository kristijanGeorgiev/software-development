import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/species_widget.dart';

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
          return SpeciesWidget(species: DUMMY_SPECIES[index]);
        },
      ),
    );
  }
}