import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(phonecall());
}

class phonecall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phone Call App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    _requestPermission();
  }

  void _requestPermission() async {
    final PermissionStatus status = await Permission.phone.request();
    if (status != PermissionStatus.granted) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Phone Call App'),
            content: Text(
                'This app requires phone call permissions to function properly.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Deny'),
              ),
              TextButton(
                onPressed: () => openAppSettings(),
                child: Text('Allow'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Call App'),
      ),
      body: Center(
        child: Text(
          'Welcome to Phone Call App!',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}