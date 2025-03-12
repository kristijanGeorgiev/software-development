import 'package:flutter/material.dart';

import '../screens/dinosaur_detail_screen.dart';

class DinosaurWidget extends StatelessWidget {
  final String id;
  final List<String> species;
  final String name;
  final String imageUrl;
  final int speed;
  final int weight;
  final int length;
  final int width;
  final String description;
  final int height;

  const DinosaurWidget({
    super.key,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.species,
    required this.speed,
    required this.length,
    required this.weight,
    required this.width,
    required this.height,
    required this.description
  });
  void selectDinosaur(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      DinosaurDetailScreen.routeName,
      arguments: {
        'id': id,
        'name': name,
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectDinosaur(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
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
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.schedule,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text('$speed'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.work,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text('$height'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.attach_money,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text('$width'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}