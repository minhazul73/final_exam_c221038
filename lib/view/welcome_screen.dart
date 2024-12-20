import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'detail_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: AppBar().preferredSize.height,
          child: ElevatedButton(
            onPressed: () => Get.to(() => const DetailScreen()),
            child: const Text("All Good!"),
          )
        ),
      ),
    );
  }
}