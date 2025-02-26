import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList(this.transactions, {super.key});

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? Center(
      child: Text('No transactions added yet!'),
    )
        : ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (ctx, index) {
        final tx = transactions[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Padding(
                padding: EdgeInsets.all(6),
                child: FittedBox(child: Text('\$${tx.amount}')),
              ),
            ),
            title: Text(tx.title),
            subtitle: Text(DateFormat.yMMMd().format(tx.date)),
          ),
        );
      },
    );
  }
}
