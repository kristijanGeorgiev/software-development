import 'package:flutter/material.dart';
import '../models/student.dart';
class StudentList extends StatelessWidget {
  final List<Student> student;
  const StudentList(this.student, void Function(String id) deleteStudent, {super.key});
  @override
  Widget build(BuildContext context) {
    return student.isEmpty
        ? Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No students added yet!',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20),
      ],
    )
        : ListView.builder(
      itemCount: student.length,
      itemBuilder: (ctx, index) {
        final tx = student[index];
        return Card(
          child: ListTile(
            title: Text(tx.name),
          ),
        );
      },
    );
  }
}