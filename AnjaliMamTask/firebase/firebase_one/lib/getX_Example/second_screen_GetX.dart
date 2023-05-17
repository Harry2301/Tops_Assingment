import 'package:flutter/material.dart';

class MySecondScreen extends StatelessWidget {
  const MySecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScreen"),        
      ),
      body: Center(
        child: Text("Second Screen"),
      ),
    );
  }
}