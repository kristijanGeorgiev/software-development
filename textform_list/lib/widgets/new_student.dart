import 'package:flutter/material.dart';

class NewStudent extends StatefulWidget {
  final Function(String, String, String, String, String, String, String) addTx;

  const NewStudent(this.addTx, {super.key});

  @override
  NewStudentState createState() => NewStudentState();
}
class NewStudentState extends State<NewStudent> {
  final _idController = TextEditingController();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _yearOfStudyController = TextEditingController();
  final _subjectController = TextEditingController();
  final _gradeController = TextEditingController();
  final _creditsController = TextEditingController();

  void _submitData() {
    final enteredId = _idController.text;
    final enteredName = _nameController.text;
    final enteredSurname = _surnameController.text;
    final enteredYearOfStudy = _yearOfStudyController.text;
    final enteredSubject = _subjectController.text;
    final enteredGrade = _gradeController.text;
    final enteredCredits = _creditsController.text;
    if (enteredId.isEmpty || enteredName.isEmpty || enteredSurname.isEmpty || enteredYearOfStudy.isEmpty || enteredSubject.isEmpty || enteredGrade.isEmpty || enteredCredits.isEmpty) {
      return;
    }

    widget.addTx(enteredId, enteredName, enteredSurname, enteredYearOfStudy, enteredSubject, enteredGrade, enteredCredits);
    Navigator.of(context).pop();
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
                decoration: InputDecoration(labelText: 'Id'),
                controller: _idController
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
              controller: _nameController
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Surname'),
              controller: _surnameController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Year Of Study'),
              controller: _yearOfStudyController
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Subject'),
              controller: _subjectController
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Grade'),
              controller: _gradeController
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Credits'),
              controller: _creditsController
            ),
            SizedBox(height: 10),
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