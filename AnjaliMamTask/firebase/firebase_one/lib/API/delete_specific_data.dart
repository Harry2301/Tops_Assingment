import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// https://flutterweb2023.000webhostapp.com/getall_students.php

class MyStudentData {
  List? mystudentList;

  String? name;
  String? subject;
  String? city;

  // need to create constructor
  MyStudentData({this.name, this.subject, this.city});

  factory MyStudentData.fromJson(Map<String, dynamic> myjson) {
    return MyStudentData(
      name: myjson['name'],
      subject: myjson['subject'],
      city: myjson['city'],
    );
  }
}

Future<List<MyStudentData>> fetchData() async {
  final response = await http.get(
      Uri.parse("https://come-unityapp.000webhostapp.com/delete_data.php"));

  if (response.statusCode == 200) {
    print("====> valid api $response");
    print("${response.body}");
    final List result = json.decode(response.body);
    return result.map((e) => MyStudentData.fromJson(e)).toList();
  } else {
    throw Exception("Invalid data");
  }
}

class MyApiDeleteSpecificDATA extends StatefulWidget {
  const MyApiDeleteSpecificDATA({super.key});

  @override
  State<MyApiDeleteSpecificDATA> createState() =>
      _MyApiDeleteSpecificDATAState();
}

class _MyApiDeleteSpecificDATAState extends State<MyApiDeleteSpecificDATA> {
  deleteData(String name) async {
    var response = await http.post(
        Uri.parse(
            "https://flutterweb2023.000webhostapp.com/tops/delete_data.php"),
        body: {
          "name": name,
        });
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<MyStudentData>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  onLongPress: () {
                    print(
                        "=====>>> data  ${snapshot.data![index].name.toString()}");

                    deleteData(snapshot.data![index].name.toString());
                  },
                  title: Text(snapshot.data![index].name.toString()),
                  trailing: Text(snapshot.data![index].city.toString()),
                  subtitle: Text(snapshot.data![index].subject.toString()),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(child: const CircularProgressIndicator());
        },
      ),
    );
  }
}
