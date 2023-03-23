import 'package:flutter/material.dart';

class nav_screen2 extends StatelessWidget {
  String? message = "";
  nav_screen2({super.key, @required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(message!),
      ),
    );
  }
}
