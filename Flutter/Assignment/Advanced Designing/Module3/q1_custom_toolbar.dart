import 'package:flutter/material.dart';

class MyToolbar extends StatelessWidget {
  const MyToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,

        // Adding a search field using TextFormfield in title
        title: Container(
          width: 350,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(255, 255, 255, 255)),
          child: TextFormField(
              decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "  Search in field",
            hintStyle: TextStyle(color: Colors.grey),
          )),
        ),

        // This button will open a menu containing 3 values
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 0,
                  child: Text("My Account"),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text("Settings"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Logout"),
                ),
              ];
            },
          )
        ],
      ),
    );
  }
}
