import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function(String, double, DateTime) addTx;

  const NewTransaction(this.addTx, {super.key});

  @override
  NewTransactionState createState() => NewTransactionState();
}

class NewTransactionState extends State<NewTransaction> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;

  void _submitData() {
    final enteredTitle = _titleController.text;
    final enteredAmount = double.tryParse(_amountController.text) ?? 0;

    if (enteredTitle.isEmpty || enteredAmount <= 0 || _selectedDate == null) {
      return;
    }

    widget.addTx(enteredTitle, enteredAmount, _selectedDate!);
    Navigator.of(context).pop();
  }

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) return;
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: _titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: _amountController,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(_selectedDate == null
                      ? 'No Date Chosen'
                      : 'Picked Date: ${_selectedDate!.toLocal()}'),
                ),
                TextButton(
                  onPressed: _presentDatePicker,
                  child: Text('Choose Date'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: _submitData,
              child: Text('Add Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
