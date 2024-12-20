import 'package:final_exam_c221038/controller/student_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'list_screen.dart';
import 'widgets/custom_textfield.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController idController = TextEditingController(),
        nameController = TextEditingController();
    StudentsController studentsController = Get.find<StudentsController>();
        var size = Get.size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Screen"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children:  [
            CustomTextfield(
              hint: 'Example: C221038', 
              controller: idController, 
              tag: 'Student ID', 
              iconData: CupertinoIcons.creditcard,
            ),
            const SizedBox(height: 11,),
            CustomTextfield(
              hint: 'Jhon Wick', 
              controller: nameController, 
              tag: 'Name', 
              iconData: CupertinoIcons.person,
            ),
            const SizedBox(height: 33,),
            GestureDetector(
              onTap: () {
                studentsController.addStudent(nameController.text, idController.text);
                Get.snackbar("Success", "Student Added");
                Get.to(() => const ListScreen());
              },
              child: Container(
                width: size.width,
                height: AppBar().preferredSize.height * .87,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(100)),
                child: const Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700, fontSize: 19),
                  ),
                ),
              ),
            ),
]),
      ),
    );
  }
}