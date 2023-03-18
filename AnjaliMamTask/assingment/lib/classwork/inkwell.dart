import 'package:flutter/material.dart';

class inkwellExample extends StatefulWidget {
  const inkwellExample({Key? key}) : super(key: key);

  @override
  State<inkwellExample> createState() => _inkwellExampleState();
}

class _inkwellExampleState extends State<inkwellExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inkwell"),),
      body: Container(
        child: InkWell(onTap: (){
          print("Tap");
        },child: Text("Click"),
        ),
      ),

    );
  }
}
