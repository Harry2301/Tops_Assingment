import 'package:flutter/material.dart';

import 'home.dart';

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({Key? key}) : super(key: key);

  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  int current_index=0;
  List<Widget> mybodycontainer = [
    home(),
    home(),
    home()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation"),),
      body: mybodycontainer.elementAt(current_index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        iconSize: 26,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Fav"),
        ],
        onTap: (value){
          setState(() {
            current_index=value;
          });
        },
      ),
    );
  }
}
