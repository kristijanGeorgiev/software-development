import 'package:excercise3/continent.dart';
import 'package:flutter/material.dart';
import 'call.dart';
import 'help.dart';
import 'info.dart';
import 'main.dart';
import 'message.dart';

class GeographyPage extends StatelessWidget {
  const GeographyPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buttonSection1 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OutlinedButton.icon(
          icon: const Icon(Icons.home, color: Color.fromARGB(234, 255, 100, 223)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.black, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const MyApp()),
          label: const Text(''),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.info, color: Color.fromARGB(255, 220, 100, 189)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.black, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const InfoScreen()),
          label: const Text(''),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.message, color: Color.fromARGB(230, 100, 189, 167)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.green, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const MessageScreen()),
          label: const Text(''),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.call, color: Color.fromARGB(240, 200, 189, 134)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.pink, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const CallScreen()),
          label: const Text(''),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.help, color: Color.fromARGB(210, 145, 100, 84)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.orange, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const HelpScreen()),
          label: const Text(''),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.backpack, color: Color.fromARGB(210, 145, 100, 84)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.orange, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const ContinentPage()),
          label: const Text(''),
        ),
      ],
    );
    Widget imageSection1 = Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.zero,
              child: Opacity(
                opacity: 0.8,
                child: Image.asset('assets/cover.jpg', height: 220, fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 170),
            child: Image.asset('assets/avatar.png', height: 70),
          ),
        ),
      ],
    );
    Widget titleSection = const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'World Map', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.cyan), textAlign: TextAlign.center,
        softWrap: true,
      ),
    );

    Widget imageSection = Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.zero,
              child: Opacity(
                opacity: 0.8,
                child: Image.asset('assets/world map.jpg', height: 220, fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ],
    );
    Widget textSection = const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'A world map is a map of most or all of the surface of Earth. World maps, because of their scale, must deal with the problem of projection. Maps rendered in two dimensions by necessity distort the display of the three-dimensional surface of the Earth. While this is true of any map, these distortions reach extremes in a world map. Many techniques have been developed to present world maps that address diverse technical and aesthetic goals.',
        softWrap: true,
      ),
    );
    return Scaffold(
      body: ListView(
        children: [
          buttonSection1,
          imageSection1,
          titleSection,
          imageSection,
          textSection
        ],
      ),
    );
  }
}