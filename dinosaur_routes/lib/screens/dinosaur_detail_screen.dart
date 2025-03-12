import 'package:flutter/material.dart';
import '../models/dinosaur.dart';
import '../widgets/dinosaur_detail_widget.dart';

class DinosaurDetailScreen extends StatefulWidget {
  static const routeName = '/dinosaur-detail';

  final List<Dinosaur> availableDinosaurs;

  const DinosaurDetailScreen(this.availableDinosaurs, {super.key});

  @override
  _DinosaurDetailScreenState createState() => _DinosaurDetailScreenState();
}

class _DinosaurDetailScreenState extends State<DinosaurDetailScreen> {
  late String dinosaurName;
  late Dinosaur selectedDinosaurs;
  var _loadedInitData = false;

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
      ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      dinosaurName = routeArgs['name'] ?? "";
      final dinosaurId = routeArgs['id'];
      selectedDinosaurs = widget.availableDinosaurs.firstWhere((dinosaur) => dinosaur.id == dinosaurId);
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dinosaurName),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return DinosaurDetailWidget(
            id: selectedDinosaurs.id,
            species: selectedDinosaurs.species,
            name: selectedDinosaurs.name,
            imageUrl: selectedDinosaurs.imageUrl,
            speed: selectedDinosaurs.speed,
            height: selectedDinosaurs.height,
            width: selectedDinosaurs.width,
            description: selectedDinosaurs.description,
            length: selectedDinosaurs.length,
            weight: selectedDinosaurs.weight,
          );
        },
        itemCount: 1,
      ),
    );
  }
}