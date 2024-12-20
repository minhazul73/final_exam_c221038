import 'package:final_exam_c221038/view/form_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Screen"),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage("https://picsum.photos/400/200")
              ),
              const SizedBox(height: 30,),
              const Text("I am Minhazul Islam Rahat",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              ),
              const SizedBox(height: 30,),
              SizedBox(
                height: AppBar().preferredSize.height,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const FormScreen()),
                  child: const Text("Get Started"),
                )
              ),
          ]
        )
      )
    );
  }
}