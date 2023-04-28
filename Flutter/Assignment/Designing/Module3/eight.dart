import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: logout(),
  ));
}

class logout extends StatefulWidget {
  @override
  _logoutState createState() => _logoutState();
}

class _logoutState extends State<logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile'),
                  onTap: () {
                    // TODO: Navigate to profile screen
                  },
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                  onTap: () {
                    // TODO: Logout user
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text("Hello, World!"),
      ),
    );
  }
}
