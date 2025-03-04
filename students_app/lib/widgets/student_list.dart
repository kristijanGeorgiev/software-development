import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/student.dart';

class StudentList extends StatelessWidget {
  final List<Student> students;

  const StudentList(this.students, void Function(String id) deleteStudent, {super.key});

  @override
  Widget build(BuildContext context) {
    return students.isEmpty
        ? Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No students added yet!',
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
      itemCount: students.length,
      itemBuilder: (ctx, index) {
        final tx = students[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: FittedBox(
                  child: Text('\$${tx.credits}'),
                ),
              ),
            ),
            title: Text(tx.name),
            subtitle: Text(DateFormat.yMMMd().format(tx.date)),
          ),
        );
      },
    );
  }
}
