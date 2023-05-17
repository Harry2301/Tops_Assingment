import 'package:firebase_one/API/delete_specific_data.dart';
import 'package:firebase_one/API/update_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyPOstDataExample extends StatefulWidget {
  const MyPOstDataExample({super.key});

  @override
  State<MyPOstDataExample> createState() => _MyPOstDataExampleState();
}

class _MyPOstDataExampleState extends State<MyPOstDataExample> {
  // https://flutterweb2023.000webhostapp.com/insert_student.php

  insertData(String name, String subject, String city) async {
    var response = await http.post(
        Uri.parse(
            "https://come-unityapp.000webhostapp.com/tops/insert_student.php"),
        body: {
          "name": name,
          "subject": subject,
          "city": city,
        });
    print(response.body);
  }

  TextEditingController _nameController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Api Data"),
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
          Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    insertData(
                        _nameController.text.toString(),
                        _subjectController.text.toString(),
                        _cityController.text.toString());
                  },
                  child: Text("POST DATA")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return MyPostUpdateData();
                          },
                        ));
                      },
                      child: Text("Update")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return MyApiDeleteSpecificDATA();
                          },
                        ));
                      },
                      child: Text("Delete")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
