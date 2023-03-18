import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool flutter = false;
  bool android = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CheckBox"),),
      body: Column(
        children: [
          Row(
            children: [
              Text("Flutter"),
              Checkbox(value: flutter, onChanged: (value){
                setState(() {
                  this.flutter=value!;

                });
              })
            ],
          ),
          Row(
            children: [
              Text("Android"),
              Checkbox(value: android, onChanged: (value){
                setState(() {
                  this.android=value!;
                });
              })
            ],
          )
        ],
      ),
    );
  }
}
