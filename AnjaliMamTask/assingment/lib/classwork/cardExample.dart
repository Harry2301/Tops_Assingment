import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card"),),
      body: Container(
        padding: EdgeInsets.all(30),
        height: 200,
        width: 300,
        child: Card(
          color: Colors.cyan,
          shadowColor: Colors.cyanAccent,
          surfaceTintColor: Colors.black,
          elevation: 10.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Center(child: Text("Harry")),
        ),
      ),
    );
  }
}
