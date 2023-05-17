import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// https://jsonplaceholder.typicode.com/posts/1

class MyPost {
  int? userId;
  int? id;
  String? title;
  String? body;

  // need to create constructor
  MyPost({this.userId, this.id, this.title, this.body});

  factory MyPost.fromJson(Map<String, dynamic> myjson) {
    return MyPost(
        userId: myjson['userId'],
        id: myjson['id'],
        title: myjson['title'],
        body: myjson['body']);
  }
}

Future<MyPost> fetchData() async {
  final response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));

  if (response.statusCode == 200) {
    return MyPost.fromJson(json.decode(response.body));
  } else {
    throw Exception("Invalid data");
  }
}

class MyAPIEXAMPLE1 extends StatefulWidget {
  const MyAPIEXAMPLE1({super.key});

  @override
  State<MyAPIEXAMPLE1> createState() => _MyAPIEXAMPLE1State();
}

class _MyAPIEXAMPLE1State extends State<MyAPIEXAMPLE1> {
  Future<MyPost>? mypostRecords;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mypostRecords = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: mypostRecords,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(child: Text("${snapshot.data!.body}"));
          } else {
            Text("No Data Found");
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
