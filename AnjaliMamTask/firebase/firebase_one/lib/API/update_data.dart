import 'dart:convert';

import 'package:firebase_one/API/post_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyPostUpdateData extends StatefulWidget {
  const MyPostUpdateData({super.key});

  @override
  State<MyPostUpdateData> createState() => _MyPostUpdateDataState();
}

class _MyPostUpdateDataState extends State<MyPostUpdateData> {
  // https://flutterweb2023.000webhostapp.com/update_data.php

  updateData(String name, String subject, String city) async {
    var response = await http.post(
      Uri.parse("https://come-unityapp.000webhostapp.com/tops/update_data.php"),
      body: ({
        "name": name,
        "subject": subject,
        "city": city,
      }),
    );
    print(response.body);
  }

  TextEditingController _nameController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UPDATE Api Data"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: "Enter name",
            ),
          ),
          TextField(
            controller: _subjectController,
            decoration: InputDecoration(
              hintText: "Enter subject",
            ),
          ),
          TextField(
            controller: _cityController,
            decoration: InputDecoration(hintText: "Enter city"),
          ),
          ElevatedButton(
              onPressed: () {
                updateData(
                    _nameController.text.toString(),
                    _subjectController.text.toString(),
                    _cityController.text.toString());
              },
              child: Text("UPDATE DATA")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return MyPOstDataExample();
                  },
                ));
              },
              child: Text("Update")),
        ],
      ),
    );
  }
}
