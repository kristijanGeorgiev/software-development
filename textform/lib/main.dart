import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: UserFormScreen(),
  ));
}

class UserFormScreen extends StatefulWidget {
  @override
  _UserFormScreenState createState() => _UserFormScreenState();
}

class _UserFormScreenState extends State<UserFormScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _idController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();

  String? studentId;
  String? studentName;
  String? studentSurname;

  void _saveData() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        studentId = _idController.text;
        studentName = _nameController.text;
        studentSurname = _surnameController.text;
      });

      // Optionally, clear the text fields after saving
      _idController.clear();
      _nameController.clear();
      _surnameController.clear();
    }
  }

  @override
  void dispose() {
    _idController.dispose();
    _nameController.dispose();
    _surnameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Form App", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _idController,
                    decoration: InputDecoration(labelText: "ID"),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter an ID";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: "Name"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a name";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _surnameController,
                    decoration: InputDecoration(labelText: "Surname"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a surname";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _saveData,
                    child: Text("Save"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            if (studentId != null && studentName != null && studentSurname != null)
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ID: $studentId", style: TextStyle(fontSize: 16)),
                      Text("Name: $studentName", style: TextStyle(fontSize: 16)),
                      Text("Surname: $studentSurname", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

