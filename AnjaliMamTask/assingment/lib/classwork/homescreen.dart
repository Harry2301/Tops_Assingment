import "package:flutter/material.dart";

class MyNavHomescreen extends StatelessWidget {
  const MyNavHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Home",style: TextStyle(fontSize: 36),),
      ),
    );
  }
}