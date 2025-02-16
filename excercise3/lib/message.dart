import 'package:flutter/material.dart';
import '../main.dart';
import 'call.dart';
import 'continent.dart';
import 'geography.dart';
import 'help.dart';
import 'info.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});
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
          icon: const Icon(Icons.home, color: Color.fromARGB(190, 255, 145, 100)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.black, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const MyApp()),
          label: const Text(''),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.info, color: Color.fromARGB(255, 100, 145, 154)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.black, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const InfoScreen()),
          label: const Text(''),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.message, color: Color.fromARGB(245, 134, 178, 183)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.green, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const MessageScreen()),
          label: const Text(''),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.call, color: Color.fromARGB(250, 243, 156, 188)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.pink, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const CallScreen()),
          label: const Text(''),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.help, color: Color.fromARGB(210, 218, 139, 231)),
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
        OutlinedButton.icon(
          icon: const Icon(Icons.backpack, color: Color.fromARGB(210, 145, 100, 84)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.orange, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const GeographyPage()),
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
                child: Image.asset('assets/sky.jpg',
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
        'The sky is an unobstructed view upward from the surface of the Earth. It includes the atmosphere and outer space. It may also be considered a place between the ground and outer space, thus distinct from outer space.In the field of astronomy, the sky is also called the celestial sphere. This is an abstract sphere, concentric to the Earth, on which the Sun, Moon, planets, and stars appear to be drifting. The celestial sphere is conventionally divided into designated areas called constellations.',
        softWrap: true,
      ),
    );
    Widget imageSection = Row(
      children: [
        Expanded(
          child: Image.asset('assets/whale.jpg', fit: BoxFit.cover),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Image.asset('assets/sperm whale.jpg', fit: BoxFit.cover),
        ),
      ],
    );

    Widget textSection2 = Container(
      padding: const EdgeInsets.all(20),
      child: const Row(
        children: [
          Expanded(
            child: Text(
              'The humpback whale is a species of baleen whale. It is a strequal (a member of the family Bactericidal) and is the only species in the genus Megameter. Adults range in length from 14–17 m (46–56 ft) and weigh up to 40 metric tons (44 short tons). The humpback has a distinctive body shape, with long pectoral fins and tubercles on its head. It is known for breaching and other distinctive surface behaviors, making it popular with whale watchers. Males produce a complex song that typically lasts from 4 to 33 minutes.',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
          ),
          Expanded(
            child: Text(
              'The sperm whale is a pelagic mammal with a worldwide range, and will migrate seasonally for feeding and breeding.[5] Females and young males live together in groups, while mature males (bulls) live solitary lives outside of the mating season. The females cooperate to protect and nurse their young. Females give birth every four to twenty years, and care for the calves for more than a decade. A mature, healthy sperm whale has no natural predators, although calves and weakened adults are sometimes killed by pods of killer whales (orcas).',
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
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: color),
          ),
        ),
      ],
    );
  }
}