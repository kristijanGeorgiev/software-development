import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList(this.transactions, void Function(String id) deleteTransaction, {super.key});

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No transactions added yet!',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 200,  // Adjust height
          child: Image.asset(
            'assets/images/waiting.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
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
                padding: const EdgeInsets.all(6),
                child: FittedBox(
                  child: Text('\$${tx.amount}'),
                ),
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

