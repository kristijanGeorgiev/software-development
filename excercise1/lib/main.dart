import 'package:flutter/material.dart';
import 'page/info.dart';
import 'page/message.dart';
import 'page/call.dart';
import 'page/help.dart';

void main() {
  runApp(const MyApp());
}

// Function to navigate to different screens
void navigateToScreen(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          const Text('15'),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.cyan, Icons.access_alarm, 'Clock'),
        _buildButtonColumn(Colors.red, Icons.email, 'Email'),
        _buildButtonColumn(Colors.yellow, Icons.share, 'Share'),
      ],
    );

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

    Widget imageSection = Stack(
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

    Widget imageSection1 = Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.zero,
              child: Opacity(
                opacity: 0.8,
                child: Image.asset('assets/flower.png', height: 220, fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ],
    );

    Widget imageSection2 = Row(
      children: [
        Expanded(
          child: Image.asset('assets/dolphin.jpg', fit: BoxFit.cover),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Image.asset('assets/orca.jpg', fit: BoxFit.cover),
        ),
      ],
    );

    Widget textSection1 = const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'A flower is the reproductive structure found in flowering plants (plants of the division Angiospermae). Flowers consist of a combination of vegetative organs – sepals that enclose and protect the developing flower. Petals attract pollinators, and reproductive organs that produce gametophytes.',
        softWrap: true,
      ),
    );

    Widget textSection2 = Container(
      padding: const EdgeInsets.all(20),
      child: const Row(
        children: [
          Expanded(
            child: Text(
              'A dolphin is an aquatic mammal in the clade Odontoceti (toothed whale). Dolphins belong to the families Delphinidae (the oceanic dolphins), Platanistidae (the Indian river dolphins), Iniidae (the New World river dolphins), Pontoporiidae (the brackish dolphins), and possibly extinct Lipotidae (baiji or Chinese river dolphin).',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ),
          Expanded(
            child: Text(
              'The orca or killer whale is a toothed whale and the largest member of the oceanic dolphin family. It is the only extant species in the genus Orcinus and is recognizable by its black-and-white patterned body. A cosmopolitan species, it is found in diverse marine environments, from Arctic to Antarctic regions to tropical seas.',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      body: ListView(
        children: [
          buttonSection1,
          imageSection,
          titleSection,
          buttonSection,
          textSection,
          imageSection1,
          textSection1,
          imageSection2,
          textSection2,
        ],
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
