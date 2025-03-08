import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealDetailItemWidget extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final List<String> ingredients;
  final List<String> steps;
  final Function isFavorite;
  final Function toggleFavorite;

  const MealDetailItemWidget({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.affordability,
    required this.complexity,
    required this.duration,
    required this.ingredients,
    required this.steps,
    required this.isFavorite,
    required this.toggleFavorite,
  });

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: child,
    );
  }
  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
      case Complexity.Challenging:
        return 'Challenging';
      case Complexity.Hard:
        return 'Hard';
      default:
        return 'Unknown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Expensive';
        break;
      default:
        return 'Unknown';
    }
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 4.0,
        margin: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Stack(
              children: [
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
                  top: 10,
                  right: 10,
                  child: IconButton(
                    icon: Icon(
                      isFavorite(id) ? Icons.star : Icons.star_border,
                      color: Colors.pinkAccent,
                      size: 30,
                    ),
                    onPressed: () => toggleFavorite(id),
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
                      Text('$duration min'),
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
                      Text(complexityText),
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
                      Text(affordabilityText),
                    ],
                  ),
                ],
              ),
            ),

            // Ingredients Section
            buildSectionTitle(context, 'Ingredients'),
            buildContainer(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: ingredients
                    .map((ingredient) => Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 4, horizontal: 8),
                  child: Text(
                    '• $ingredient',
                    style: const TextStyle(fontSize: 16),
                  ),
                ))
                    .toList(),
              ),
            ),

            // Steps Section
            buildSectionTitle(context, 'Steps'),
            buildContainer(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: steps
                    .asMap()
                    .entries
                    .map(
                      (entry) => Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 6, horizontal: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 12,
                          child: Text(
                            '${entry.key + 1}',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            entry.value,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}