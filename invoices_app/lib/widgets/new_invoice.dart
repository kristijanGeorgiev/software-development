import 'package:flutter/material.dart';

class NewInvoice extends StatefulWidget {
  final Function(String, int, int, DateTime) addTx;

  const NewInvoice(this.addTx, {super.key});

  @override
  NewInvoiceState createState() => NewInvoiceState();
}
class NewInvoiceState extends State<NewInvoice> {
  final _itemController = TextEditingController();
  final _quantityController = TextEditingController();
  final _priceController = TextEditingController();
  DateTime? _selectedDate;

  void _submitData() {
    final enteredItem = _itemController.text;
    final enteredQuantity = int.tryParse(_quantityController.text) ?? 0;
    final enteredPrice = int.tryParse(_priceController.text) ?? 0;

    if (enteredItem.isEmpty || enteredPrice <= 0 || _selectedDate == null) {
      return;
    }

    widget.addTx(enteredItem, enteredQuantity, enteredPrice, _selectedDate!);
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
                decoration: InputDecoration(labelText: 'Item'),
                controller: _itemController
            ),
            TextField(
                decoration: InputDecoration(labelText: 'Quantity'),
                controller: _quantityController,
              keyboardType: TextInputType.number,
            ),
            TextField(
                decoration: InputDecoration(labelText: 'Price'),
                controller: _priceController,
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
              child: Text('Add Invoice'),
            ),
          ],
        ),
      ),
    );
  }
}
