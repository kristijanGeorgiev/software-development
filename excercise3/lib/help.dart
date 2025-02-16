import 'package:flutter/material.dart';

import '../main.dart';
import 'call.dart';
import 'continent.dart';
import 'info.dart';
import 'message.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});
  void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
  @override
  Widget build(BuildContext context) {
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OutlinedButton.icon(
          icon: const Icon(Icons.home, color: Color.fromARGB(234, 255, 100, 123)),
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
          icon: const Icon(Icons.call, color: Color.fromARGB(140, 100, 189, 134)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.pink, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const CallScreen()),
          label: const Text(''),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.help, color: Color.fromARGB(210, 145, 100, 184)),
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
                child: Image.asset('assets/lightning.jpg',
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
        'Lightning is an electrical discharge caused by imbalances between storm clouds and the ground, or within the clouds themselves. Most lightning occurs within the clouds. "Sheet lightning" describes a distant bolt that lights up an entire cloud base. Other visible bolts may appear as bead, ribbon, or rocket lightning. ',
        softWrap: true,
      ),
    );
    Widget imageSection = Row(
      children: [
        Expanded(
          child: Image.asset('assets/great white shark.jpg', fit: BoxFit.cover),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Image.asset('assets/mako shark.jpg', fit: BoxFit.cover),
        ),
      ],
    );

    Widget textSection2 = Container(
      padding: const EdgeInsets.all(20),
      child: const Row(
        children: [
          Expanded(
            child: Text(
              'The great white shark is also known as the white shark, white pointer, or simply great white, is a species of large mackerel shark which can be found in the coastal surface waters of all the major oceans. It is the only known surviving species of its genus. The great white shark is notable for its size, with the largest preserved female specimen measuring 5.83 m (19.1 ft) in length and around 2,000 kg (4,400 lb) in weight at maturity.',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
          ),
          Expanded(
            child: Text(
              'The mako shark is also known as the short fin mako, blue pointer, or bonito shark, is a large mackerel shark. It is commonly referred to as the mako shark, as is the long fin mako shark. The fastest known shark species, able to reach speeds of 74 km/h (46 mph) in bursts, the short fin mako can attain a size of 4 m (13 ft) in length and weigh 570 kg (1,260 lb). "Mako" comes from the Māori language,[3] meaning either the shark or a shark tooth.',
              textAlign: TextAlign.right, // Aligns text to the right
              style: TextStyle(fontSize: 16, color: Colors.pink),
            ),
          ),
        ],
      ),
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