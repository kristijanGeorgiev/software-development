import 'package:flutter/material.dart';
import 'package:textform_list/widgets/new_student.dart';
import 'package:textform_list/widgets/student_list.dart';
import 'models/student.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Students Application',
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
  final List<Student> _userStudents = [];
  void _addNewStudent(String id, String name, String surname, String yearOfStudy, String subject, String grade, String credits) {
    final newTx = Student(
        id: id,
        name: name,
        surname: surname,
        yearOfStudy: yearOfStudy,
        subject: subject,
        grade: grade,
        credits: credits
    );
    setState(() {
      _userStudents.add(newTx);
    });
  }
  void deleteStudent(String id) {
    setState(() {
      _userStudents.removeWhere((tx) => tx.id == id);
    });
  }
  void _startAddNewStudent(BuildContext ctx) {
    showModalBottomSheet(context: context, builder: (_) {
      return NewStudent(_addNewStudent);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Students Application',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.cyan,
        actions: [
          IconButton(icon: Icon(Icons.add),
            onPressed: () => _startAddNewStudent(context),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: StudentList(_userStudents, deleteStudent)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _startAddNewStudent(context)),
    );
  }
}
