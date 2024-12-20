import 'package:get/get.dart';

import '../helper/database_helper.dart';

class StudentsController extends GetxController {
  final students = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchStudents();
  }

  Future<void> fetchStudents() async {
    students.value = await DatabaseHelper().getStudents();
  }

  Future<void> addStudent(String name, String studentId) async {
    await DatabaseHelper().insertStudent({
      'name': name,
      'studentId': studentId,
    });
    fetchStudents();
  }

  Future<void> deleteStudent(int id) async {
    await DatabaseHelper().deleteStudent(id);
    fetchStudents();
  }
}
