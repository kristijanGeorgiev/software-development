import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';
import 'chart_bar.dart';
class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;

  const Chart(this.recentTransactions, {super.key});

  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      double totalSum = 0;

      for (var tx in recentTransactions) {
        if (tx.date.day == weekDay.day &&
            tx.date.month == weekDay.month &&
            tx.date.year == weekDay.year) {
          totalSum += tx.amount;
        }
      }

      return {'day': DateFormat.E().format(weekDay), 'amount': totalSum};
    }).reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: groupedTransactionValues.map((data) {
          return ChartBar(data['day'].toString(), data['amount'] as double);
        }).toList(),
      ),
    );
  }
}
