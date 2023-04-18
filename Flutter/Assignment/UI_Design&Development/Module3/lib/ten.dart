import 'package:flutter/material.dart';

void main() {
  runApp(audio());
}

class audio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Demo',
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
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    GalleryPage(),
    AudioPage(),
    VideoPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Demo'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.audiotrack),
            label: 'Audio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection),
            label: 'Video',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Gallery Page',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}

class AudioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Audio Page',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Video Page',
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}