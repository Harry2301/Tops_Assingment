import 'package:flutter/material.dart';

void main() => runApp(alert());

class alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert Dialog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Alert Dialog'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Dialog'),
          content: Text('Do you want to show a toast message?'),
          actions: <Widget>[
            FloatingActionButton(
              child: Text('Yes'),
              onPressed: () {
                Fluttertoast.showToast(msg: 'You selected Yes!');
                Navigator.of(context).pop();
              },
            ),
            FloatingActionButton(
              child: Text('No'),
              onPressed: () {
                Fluttertoast.showToast(msg: 'You selected No!');
                Navigator.of(context).pop();
              },
            ),
            FloatingActionButton(
              child: Text('Cancel'),
              onPressed: () {
                Fluttertoast.showToast(msg: 'You selected Cancel!');
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Dialog'),
          onPressed: _showDialog,
        ),
      ),
    );
  }
}

class Fluttertoast {
  static void showToast({required String msg}) {}
}
