import 'package:flutter/material.dart';
import 'package:assingment/classwork/navigatorExample/screen1.dart';
class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen2"),),
      body: Container(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> screen1()));
          },
          child: Text("Click Here"),
        ),
      )
    );
  }
}
