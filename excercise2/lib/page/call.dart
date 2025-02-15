import 'package:flutter/material.dart';
import '../main.dart';
import 'help.dart';
import 'info.dart';
import 'message.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buttonSection = Row(
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
          icon: const Icon(Icons.message, color: Color.fromARGB(230, 200, 189, 167)),
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
          icon: const Icon(Icons.help, color: Color.fromARGB(210, 245, 200, 184)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.orange, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const HelpScreen()),
          label: const Text(''),
        ),
      ],
    );
    Widget imageSection2 = Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0000.0),
                bottomRight: Radius.circular(0000.0),
              ),
              child: Opacity(
                opacity: 0.8,
                child: Image.asset('assets/cover.jpg',
                    height: 220, fit: BoxFit.cover),
              ),
            )
          ],
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 170),
            child: Image.asset('assets/avatar.png', height: 70),
          ),
        )
      ],
    );
    Widget titleSection = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Kristijan Georgiev',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  'kristijan.georg@gmail.com',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          Icon(Icons.abc_sharp, color: Colors.red[500]),
          const Text('15')
        ],
      ),
    );
    Widget buttonSection1 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.cyan, Icons.access_alarm, 'Clock'),
        _buildButtonColumn(Colors.red, Icons.email, 'Email'),
        _buildButtonColumn(Colors.yellow, Icons.share, 'Share'),
      ],
    );
    Widget textSection = const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Lorem Ipsum is simply dummy text of the printing and '
            'typesetting industry. Lorem Ipsum has been the industry’s standard dummy text '
            'ever since the 1500s, when an unknown printer took a galley of type and scrambled '
            'it to make a type specimen book.',
        softWrap: true,
      ),
    );
    Widget imageSection1 = Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0000.0),
                bottomRight: Radius.circular(0000.0),
              ),
              child: Opacity(
                opacity: 0.8,
                child: Image.asset('assets/planet.jpg',
                    height: 220, fit: BoxFit.cover),
              ),
            )
          ],
        ),
      ],
    );
    Widget textSection1 = const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'A planet is a large, rounded astronomical body that is generally required to be in orbit around a star, stellar remnant, or brown dwarf, and is not one itself.[1] The Solar System has eight planets by the most restrictive definition of the term: the terrestrial planets Mercury, Venus, Earth, and Mars, and the giant planets Jupiter, Saturn, Uranus, and Neptune. The best available theory of planet formation is the nebular hypothesis, which posits that an interstellar cloud collapses out of a nebula to create a young prostate orbited by a interplanetary disk. Planets grow in this disk by the gradual accumulation of material driven by gravity, a process called accretion.',
        softWrap: true,
      ),
    );
    Widget imageSection = Row(
      children: [
        Expanded(
          child: Image.asset('assets/yellow tang.jpg', fit: BoxFit.cover),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Image.asset('assets/moorish idol.jpg', fit: BoxFit.cover),
        ),
      ],
    );

    Widget textSection2 = Container(
      padding: const EdgeInsets.all(20),
      child: const Row(
        children: [
          Expanded(
            child: Text(
              'The yellow tang also known as the lemon sailfish, yellow sailfish tang or somber surgeon fish, is a species of marine ray-finned fish belonging to the family Acanthamoeba which includes the surgeon fishes, unicorn fishes and tangs. Bright yellow in color, it is one of the most popular marine aquarium fish, though in its natural state, it lives in reefs. The yellow tang spawns around a full moon, eats algae, and has a white barb, located just before the tail fin, to protect itself.',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
          ),
          Expanded(
            child: Text(
              'The Moorish idol was first formally described as Chatterton coconuts in 1758 by Carl Linnaeus in the 10th edition of the Systems Nature with "Indian Seas" given as its type locality.[3] In 1831 Georges Cuvier classified it in the new mono-specific genus Annulus.[4] In 1876 Pieter Sleeker proposed the monotonic family Dalliance.[5] The Dalliance is classified within the suborder ActiveAndroid of the order Anthropometries.[6] Some authors classify the Moorish idols in the surgeon fish.',
              textAlign: TextAlign.right, // Aligns text to the right
              style: TextStyle(fontSize: 16, color: Colors.pink),
            ),
          ),
        ],
      ),
    );
    Widget buttonSection2 = Row(
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
          icon: const Icon(Icons.message, color: Color.fromARGB(230, 200, 189, 167)),
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
          icon: const Icon(Icons.help, color: Color.fromARGB(210, 245, 200, 184)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.orange, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const HelpScreen()),
          label: const Text(''),
        ),
      ],
    );
    return MaterialApp(
      title: 'Student App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ListView(
          children: [
            buttonSection,
            imageSection2,
            titleSection,
            buttonSection1,
            textSection,
            imageSection1,
            textSection1,
            imageSection,
            textSection2,
            buttonSection2
          ],
        ),
      ),
    );
  }
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}