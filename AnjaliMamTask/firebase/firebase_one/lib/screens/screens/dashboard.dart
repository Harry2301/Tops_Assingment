import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_one/screens/logic.dart';
import 'package:firebase_one/screens/screens/detailed_homescreen.dart';
import 'package:firebase_one/screens/widgets/textfield.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class dashboardScreen extends StatefulWidget {
  const dashboardScreen({super.key});
  @override
  State<dashboardScreen> createState() => _dashboardScreenState();
}

FirebaseAuth _auth = FirebaseAuth.instance;

class _dashboardScreenState extends State<dashboardScreen> {
  TextEditingController searchname = TextEditingController();

  // collectino data in map
  Map<String, dynamic>? userMap;

  bool isloading = false;
  // logic search

  void searchData() async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;

    setState(() {
      isloading = true;
    });

    await _firestore
        .collection("users")
        .where("email", isEqualTo: searchname.text)
        .get()
        .then((value) {
      setState(() {
        userMap = value.docs[0].data();
        isloading = false;
      });
      print("USERMAP : $userMap");
    });
  }

  String generateChatId(String User1, String User2) {
    print("------> $User1 -----? ${User1[0].toLowerCase().codeUnits[0]}");
    print("------> $User2 -----? ${User2.toLowerCase().codeUnits[0]}");

    if (User1[0].toLowerCase().codeUnits[0] >
        User2.toLowerCase().codeUnits[0]) {
      print("if ----> ${User1}${User2}");
      return "$User1$User2";
    } else {
      print("if ----> ${User1}${User2}");
      return "$User2$User1";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        leading: Icon(Icons.home),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
              onPressed: () {
                Logout(context);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(16),
                child: mytextfield(
                    "search user", "Search", Icons.search, searchname)),
            ElevatedButton(
                onPressed: () {
                  searchData();
                },
                child: Text("Search")),
            userMap != null
                ? ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          String chatID = generateChatId(
                              _auth.currentUser!.uid, userMap!['name']);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => detailed_homescreen(
                                  chatID: chatID,
                                  userMap: userMap,
                                ),
                              ));
                        },
                        child: Card(
                          child: Column(
                            children: [
                              Text(userMap!['name']),
                              Text(userMap!['email'])
                            ],
                          ),
                        ),
                      );
                    },
                  )
                : Text("user not found")
          ],
        ),
      ),
    );
  }
}
