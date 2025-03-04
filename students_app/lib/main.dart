import 'package:flutter/material.dart';
import 'package:students_app/widgets/chart.dart';
import 'package:students_app/widgets/new_student.dart';
import 'package:students_app/widgets/student_list.dart';
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
  void _addNewStudent(String name, String surname, String email, String address, int credits, DateTime date) {
    final newTx = Student(
      id: DateTime.now().toString(),
      name: name,
      surname: surname,
      email: email,
      address: address,
      credits: credits,
      date: date
    );
    setState(() {
      _userStudents.add(newTx);
    });
  }
  void _deleteStudent(String id) {
    setState(() {
      _userStudents.removeWhere((tx) => tx.id == id);
    });
  }
  List<Student> get _recentStudents {
    return _userStudents.where((tx) {
      return tx.date.isAfter(DateTime.now().subtract(Duration(days: 7)),
      );
    }).toList();
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
        backgroundColor: Colors.red,
        actions: [
          IconButton(icon: Icon(Icons.add),
            onPressed: () => _startAddNewStudent(context),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Chart(_recentStudents),
          Expanded(child: StudentList(_userStudents, _deleteStudent)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          onPressed: () => _startAddNewStudent(context)),
    );
  }
}
