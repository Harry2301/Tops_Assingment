import "package:flutter/material.dart";
import "homescreen.dart";

class MyBottomNavbar extends StatefulWidget {
  const MyBottomNavbar({super.key});

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int current_index = 0;
  List<Widget> mybodyContainer = [
    MyNavHomescreen(),
    MyNavHomescreen(),
    MyNavHomescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom example"),
      ),
      body: mybodyContainer.elementAt(current_index),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: current_index,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          iconSize: 25,
          onTap: (value) {
            setState(() {
              current_index = value;
            });
          },

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person"),
          ]),
    );
  }
}