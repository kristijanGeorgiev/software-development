import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/invoice.dart';
class InvoiceList extends StatelessWidget {
  final List<Invoice> invoices;
  const InvoiceList(this.invoices, void Function(String id) deleteInvoice, {super.key});
  @override
  Widget build(BuildContext context) {
    return invoices.isEmpty
        ? Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No invoices added yet!',
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
      itemCount: invoices.length,
      itemBuilder: (ctx, index) {
        final tx = invoices[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: FittedBox(
                  child: Text('\$${tx.price}'),
                ),
              ),
            ),
            title: Text(tx.item),
            subtitle: Text(DateFormat.yMMMd().format(tx.date)),
          ),
        );
      },
    );
  }
}
