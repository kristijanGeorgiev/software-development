import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;

  const ChartBar(this.label, this.spendingAmount, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('\$${spendingAmount.toStringAsFixed(0)}'),
        Text(label),
      ],
    );
  }
}
