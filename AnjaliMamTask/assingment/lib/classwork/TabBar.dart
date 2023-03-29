import 'package:flutter/material.dart';
import 'bottom_navbar.dart';
import 'homescreen.dart';

class MyTabView extends StatefulWidget {
  const MyTabView({super.key});

  @override
  State<MyTabView> createState() => _MyTabViewState();
}

class _MyTabViewState extends State<MyTabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter tab controller"),
          backgroundColor: Colors.black,
          bottom: TabBar(tabs:
          [
            Tab(
              icon: Icon(Icons.contact_page),text: "contact",
            ),
            Tab(icon: Icon(Icons.camera),text: "Camera",)
          ]),
        ),
        body: TabBarView(children: [
          MyHomePage(),
          MyNavHomescreen()
        ],
        )));
  }
}