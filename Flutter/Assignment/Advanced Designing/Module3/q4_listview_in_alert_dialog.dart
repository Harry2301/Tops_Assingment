import 'package:flutter/material.dart';

void main() => runApp(cities());

class cities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Selection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'City Selection'),
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
  String selectedCity = 'Select City';

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select City'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ListTile(
                  title: Text('New York'),
                  onTap: () {
                    setState(() {
                      selectedCity = 'New York';
                    });
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('London'),
                  onTap: () {
                    setState(() {
                      selectedCity = 'London';
                    });
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Paris'),
                  onTap: () {
                    setState(() {
                      selectedCity = 'Paris';
                    });
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Tokyo'),
                  onTap: () {
                    setState(() {
                      selectedCity = 'Tokyo';
                    });
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selected City:',
            ),
            Text(
              '$selectedCity',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showDialog,
        tooltip: 'Select City',
        child: Icon(Icons.add),
      ),
    );
  }
}
