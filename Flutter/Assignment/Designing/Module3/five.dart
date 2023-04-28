import 'package:flutter/material.dart';

void main() => runApp(exit());

class exit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exit Confirmation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Exit Confirmation'),
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
  Future _onWillPop() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Confirm Exit'),
        content: Text('Are you sure you want to exit?'),
        actions: <Widget>[
          FloatingActionButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          FloatingActionButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text('Yes'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          'Press the back button to exit',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
