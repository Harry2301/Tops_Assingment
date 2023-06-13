import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateManagement extends StatefulWidget {
  const StateManagement({super.key});

  @override
  State<StateManagement> createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
  var score = 0.obs;

  addition() {
    score++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StateManagement"),
      ),
      body: Container(
        child: Obx(() => Text(
              "Score: $score",
              style: TextStyle(fontSize: 30),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addition();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
