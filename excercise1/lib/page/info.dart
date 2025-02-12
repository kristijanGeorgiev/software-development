import 'package:flutter/material.dart';

import '../main.dart';
import 'call.dart';
import 'help.dart';
import 'message.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OutlinedButton.icon(
          icon: const Icon(Icons.home, color: Color.fromARGB(167, 255, 145, 23)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.black, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const MyApp()),
          label: const Text(''),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.info, color: Color.fromARGB(255, 200, 145, 54)),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.black, side: BorderSide.none),
          onPressed: () => navigateToScreen(context, const InfoScreen()),
          label: const Text(''),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.message, color: Color.fromARGB(245, 134, 78, 83)),
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
          icon: const Icon(Icons.help, color: Color.fromARGB(210, 167, 178, 184)),
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
                child: Image.asset('assets/tree.png',
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
        'A tree typically has many secondary branches supported clear of the ground by the trunk, which typically contains woody tissue for strength, and vascular tissue to carry materials from one part of the tree to another. For most trees the trunk is surrounded by a layer of bark which serves as a protective barrier. Below the ground, the roots branch and spread out widely; they serve to anchor the tree and extract moisture and nutrients from the soil. Above ground, the branches divide into smaller branches and shoots. The shoots typically bear leaves, which capture light energy and convert it into sugars by photosynthesis, providing the food for the tree growth and development.',
        softWrap: true,
      ),
    );
    Widget imageSection = Row(
      children: [
        Expanded(
          child: Image.asset('assets/hammerhead shark.jpg', fit: BoxFit.cover),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Image.asset('assets/manta ray.jpg', fit: BoxFit.cover),
        ),
      ],
    );

    Widget textSection2 = Container(
      padding: const EdgeInsets.all(20),
      child: const Row(
        children: [
          Expanded(
            child: Text(
              'The hammerhead sharks are a group of sharks that form the family Sphenoidal, named for the unusual and distinctive form of their heads, which are flattened and laterally extended into a cephalopod (a T-shape or "hammer"). The sharks eyes are placed one on each end of this T-shaped structure, with their small mouths directly centered and underneath.',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
          ),
          Expanded(
            child: Text(
              'Manta rays are large rays belonging to the genus Modula (formerly its own genus Manta). The larger species, M. bistros, reaches 7 m (23 ft) in width, while the smaller, M. redialled, reaches 5.5 m (18 ft). Both have triangular pectoral fins, horn-shaped cephalic fins and large, forward-facing mouths. They are classified among the Formalisations (stingrays and relatives) and are placed in the family Myelination.',
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
