import 'package:flutter/material.dart';
import 'package:pass_argument/detailargument.dart';
class DetailScreen extends StatelessWidget {
  final String title;
  final int id;
  final double price;
  const DetailScreen({required this.title, required this.id, required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    final DetailArguments args = ModalRoute.of(context)!.settings.arguments as DetailArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Argument Screen')
      ),
      body: Center(child: Text('Title : ${args.title} \n ID : ${args.id} \n Price: ${args.price}'))
    );
  }
}
