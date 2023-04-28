import 'package:flutter/material.dart';

class ImageTextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Text App"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network("https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg",
                  height: 150,width: 150),
                  SizedBox(width: 16),
                 Image.network("https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg",
                 height: 150,width: 150)
                ],
              ),
              SizedBox(height: 16),
              Text(
                "Hello cat!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Image.network("https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg",
                  height: 150,width: 150),
                  SizedBox(width: 16),
                 Image.network("https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg",
                 height: 150,width: 150)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
