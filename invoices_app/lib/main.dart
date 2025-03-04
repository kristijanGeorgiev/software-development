import 'package:flutter/material.dart';
import 'package:invoices_app/widgets/chart.dart';
import 'package:invoices_app/widgets/new_invoice.dart';
import 'package:invoices_app/widgets/invoice_list.dart';
import 'models/invoice.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invoices Application',
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          hintColor: Colors.amber,
          fontFamily: 'Quicksand'
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Invoice> _userInvoices = [];
  void _addNewInvoice(String item, int quantity, int price, DateTime date) {
    final newTx = Invoice(
        id: DateTime.now().toString(),
        item: item,
        quantity: quantity,
        price: price,
        date: date
    );
    setState(() {
      _userInvoices.add(newTx);
    });
  }
  void _deleteInvoice(String id) {
    setState(() {
      _userInvoices.removeWhere((tx) => tx.id == id);
    });
  }
  List<Invoice> get _recentInvoices {
    return _userInvoices.where((tx) {
      return tx.date.isAfter(DateTime.now().subtract(Duration(days: 7)),
      );
    }).toList();
  }
  void _startAddNewInvoice(BuildContext ctx) {
    showModalBottomSheet(context: context, builder: (_) {
      return NewInvoice(_addNewInvoice);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Invoices Application',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(icon: Icon(Icons.add),
            onPressed: () => _startAddNewInvoice(context),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Chart(_recentInvoices),
          Expanded(child: InvoiceList(_userInvoices, _deleteInvoice)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _startAddNewInvoice(context)),
    );
  }
}
