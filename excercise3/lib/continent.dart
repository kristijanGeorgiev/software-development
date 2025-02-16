import 'package:flutter/material.dart';
import 'call.dart';
import 'help.dart';
import 'info.dart';
import 'main.dart';
import 'message.dart';

class ContinentPage extends StatelessWidget {
  const ContinentPage({super.key});

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
        'Continents', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.cyan), textAlign: TextAlign.center,
        softWrap: true,
      ),
    );

    Widget imageSection = Row(
      children: [
        Expanded(
          child: Image.asset('assets/america.jpg', fit: BoxFit.cover),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Image.asset('assets/europe.png', fit: BoxFit.cover),
        ),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(20),
      child: const Row(
        children: [
          Expanded(
            child: Text(
              'The United States of America (USA), commonly known as the United States (U.S.) or America, is a country primarily located in North America. It is a federal union of 50 states and Washington, D.C. as its federal capital district. The 48 contiguous states border Canada to the north and Mexico to the south, with the semi-exclavic state of Alaska in the northwest and the archipelagic state of Hawaii in the Pacific Ocean. The U.S. also asserts sovereignty over five major island territories and various uninhabited islands.',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
          ),
          Expanded(
            child: Text(
              'Europe is a continent[t] located entirely in the Northern Hemisphere and mostly in the Eastern Hemisphere. It is bordered by the Arctic Ocean to the north, the Atlantic Ocean to the west, the Mediterranean Sea to the south, and Asia to the east. Europe shares the landmass of Eurasia with Asia, and of Afro-Eurasia with both Africa and Asia.[9][10] Europe is commonly considered to be separated from Asia by the watershed of the Ural Mountains, the Ural River, the Caspian Sea, the Greater Caucasus, the Black Sea, and the waterway of the Bosporus Strait.',
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
          imageSection1,
          titleSection,
          imageSection,
          textSection
        ],
      ),
    );
  }
}