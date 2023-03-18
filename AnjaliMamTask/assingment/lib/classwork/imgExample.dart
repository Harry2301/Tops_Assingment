import 'package:flutter/material.dart';

class imgExample extends StatelessWidget {
  const imgExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset("img.jpg"),
      ),
    );
  }
}
