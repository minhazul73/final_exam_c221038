import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/student_controller.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});


  @override
  Widget build(BuildContext context) {
    
    final studentsController = Get.find<StudentsController>();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
        centerTitle: true,
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: studentsController.students.length,
          itemBuilder: (context, index) {
            final student = studentsController.students[index];
            return ListTile(
              title: Text(student['name']),
              subtitle: Text(student['studentId']),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  studentsController.deleteStudent(student['id']);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
