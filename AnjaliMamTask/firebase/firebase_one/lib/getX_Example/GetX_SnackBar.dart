import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScreen"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.snackbar("Flutter", "Welcome to flutter",
                    snackPosition: SnackPosition.TOP,
                    colorText: Colors.amber,
                    backgroundColor: Colors.black);
              },
              child: Text("Click here for snackbar"))),
    );
  }
}
