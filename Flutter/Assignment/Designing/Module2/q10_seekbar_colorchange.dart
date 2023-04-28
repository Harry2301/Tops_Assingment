import 'package:flutter/material.dart';

class ColorChangeApp extends StatefulWidget {
  @override
  _ColorChangeAppState createState() => _ColorChangeAppState();
}

class _ColorChangeAppState extends State<ColorChangeApp> {
  double _redValue = 0;
  double _greenValue = 0;
  double _blueValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(_redValue.toInt(), _greenValue.toInt(), _blueValue.toInt(), 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Adjust the sliders to change the color",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      value: _redValue,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          _redValue = value;
                        });
                      },
                      activeColor: Colors.red,
                      label: "Red",
                    ),
                  ),
                  Expanded(
                    child: Slider(
                      value: _greenValue,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          _greenValue = value;
                        });
                      },
                      activeColor: Colors.green,
                      label: "Green",
                    ),
                  ),
                  Expanded(
                    child: Slider(
                      value: _blueValue,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          _blueValue = value;
                        });
                      },
                      activeColor: Colors.blue,
                      label: "Blue",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
