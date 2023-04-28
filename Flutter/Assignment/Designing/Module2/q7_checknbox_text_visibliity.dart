import 'package:flutter/material.dart';

class CheckboxTextApp extends StatefulWidget {
  @override
  _CheckboxTextAppState createState() => _CheckboxTextAppState();
}

class _CheckboxTextAppState extends State<CheckboxTextApp> {
  bool _isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Text App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: Text("Show Text"),
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                   _isChecked = true;
                });
              },
            ),
            
            Visibility(
              visible: _isChecked,
              child: Text(
                "Hello World!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
