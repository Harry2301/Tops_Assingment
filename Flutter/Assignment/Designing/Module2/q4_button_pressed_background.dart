//create an application to change background when button is clicked
import 'dart:math';

import 'package:flutter/material.dart';



class MyButtonBackground extends StatefulWidget {
  @override
  _MyButtonBackgroundState createState() => _MyButtonBackgroundState();
}

class _MyButtonBackgroundState extends State<MyButtonBackground> {
  // Variable to hold the current background color
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("Background color changer"),
     ),
      backgroundColor: _backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Change the background color to a random color when the button is pressed
                setState(() {
                  _backgroundColor = Color.fromRGBO(
                    256 ~/ (1 / (0.5 + Random().nextDouble() / 2)),
                    256 ~/ (1 / (0.5 + Random().nextDouble() / 2)),
                    256 ~/ (1 / (0.5 + Random().nextDouble() / 2)),
                    1.0,
                  );
                });
              },
              child: Text("Change Background Color"),
            ),
          ),
        ],
      ),
    );
  }
}
