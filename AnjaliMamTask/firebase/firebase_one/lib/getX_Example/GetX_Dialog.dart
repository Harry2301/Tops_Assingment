import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyGetXDialog extends StatelessWidget {
  const MyGetXDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScreen"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.defaultDialog(
                
                  title: "My flutter",
                  content: Text(
                    "Welcome to flutter",
                    style: TextStyle(color: Colors.amber),
                  ),
                 // backgroundColor: Colors.deepPurple
                  );
            },
            child: Text("Click here for Dialog")),
      ),
    );
  }
}
