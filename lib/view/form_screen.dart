import 'package:flutter/material.dart';

import 'widgets/custom_textfield.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController textEditingController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Screen"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            CustomTextfield(
              hint: '', 
              controller: , 
              tag: '', 
              iconData: ,
              
            ),
        ]),
      ),
    );
  }
}