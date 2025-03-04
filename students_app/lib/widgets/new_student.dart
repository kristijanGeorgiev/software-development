import 'package:flutter/material.dart';

class NewStudent extends StatefulWidget {
  final Function(String, String, String, String, int, DateTime) addTx;

  const NewStudent(this.addTx, {super.key});

  @override
  NewStudentState createState() => NewStudentState();
}
class NewStudentState extends State<NewStudent> {
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _addressController = TextEditingController();
  final _creditsController = TextEditingController();
  DateTime? _selectedDate;

  void _submitData() {
    final enteredName = _nameController.text;
    final enteredSurName = _surnameController.text;
    final enteredEmail = _emailController.text;
    final enteredAddress = _addressController.text;
    final enteredCredits = int.tryParse(_creditsController.text) ?? 0;

    if (enteredName.isEmpty || enteredCredits <= 0 || _selectedDate == null) {
      return;
    }

    widget.addTx(enteredName, enteredSurName, enteredEmail, enteredAddress, enteredCredits, _selectedDate!);
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
              decoration: InputDecoration(labelText: 'Name'),
              controller: _nameController
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Surname'),
              controller: _surnameController
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
              controller: _emailController
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Address'),
              controller: _addressController
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Credits'),
              controller: _creditsController,
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
              child: Text('Add Student'),
            ),
          ],
        ),
      ),
    );
  }
}