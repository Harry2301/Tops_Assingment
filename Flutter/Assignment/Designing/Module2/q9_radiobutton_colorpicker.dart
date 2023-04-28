import 'package:flutter/material.dart';

class ColorDisplayApp extends StatefulWidget {
  @override
  _ColorDisplayAppState createState() => _ColorDisplayAppState();
}

class _ColorDisplayAppState extends State<ColorDisplayApp> {
  Color selectedColor = Colors.white;

  // void onColorSelected(Color color) {
  //   setState(() {
  //     selectedColor = color;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Display App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Select a color",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RadioListTile<Color>(
            title: Text("Red"),
            value: Colors.red,
            groupValue: selectedColor,
            onChanged: (value) {
              setState(() {
                selectedColor = Colors.red;
              });
            },
          ),
          RadioListTile<Color>(
            title: Text("Green"),
            value: Colors.green,
            groupValue: selectedColor,
             onChanged: (value) {
              setState(() {
                selectedColor = Colors.green;
              });
            },
          ),
          RadioListTile<Color>(
            title: Text("Blue"),
            value: Colors.blue,
            groupValue: selectedColor,
             onChanged: (value) {
              setState(() {
                selectedColor = Colors.blue;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              width: 200,
              height: 200,
              color: selectedColor,
            ),
          ),
        ],
      ),
    );
  }
}
