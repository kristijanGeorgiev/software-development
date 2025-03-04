import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/invoice.dart';
import 'chart_bar.dart';
class Chart extends StatelessWidget {
  final List<Invoice> recentInvoices;
  const Chart(this.recentInvoices, {super.key});
  List<Map<String, Object>> get groupedInvoiceValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      double totalSum = 0;

      for (var tx in recentInvoices) {
        if (tx.date.day == weekDay.day &&
            tx.date.month == weekDay.month &&
            tx.date.year == weekDay.year) {
          totalSum += tx.price;
        }
      }
      return {'day': DateFormat.E().format(weekDay), 'amount': totalSum};
    }).reversed.toList();
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: groupedInvoiceValues.map((data) {
          return ChartBar(data['day'].toString(), data['amount'] as double);
        }).toList(),
      ),
    );
  }
}
