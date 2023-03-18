import 'package:flutter/material.dart';

class textBorder extends StatelessWidget {
  const textBorder({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _name = new TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Text Border")),
      body: Container(
        padding: EdgeInsets.all(20),
        child: TextField(
          controller: _name,
        ),
      ),
    );
  }
}