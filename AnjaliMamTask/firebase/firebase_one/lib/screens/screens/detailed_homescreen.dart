import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyDetailsScreen extends StatelessWidget {
  Map<String, dynamic>? userMap;
  String? chatID;

  MyDetailsScreen({required this.chatID, required this.userMap});

  TextEditingController messageController = TextEditingController();

  // firebase auth object initialization
  FirebaseAuth _auth = FirebaseAuth.instance;

  // for firestore add data need to ccreate firestore object
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Map<String, dynamic> message_map = Map();

  void sendMessage() async {
    if (messageController.text.isNotEmpty) {
      Map<String, dynamic> message_map = {
        "sendBy": _auth.currentUser!.displayName,
        "message": messageController.text,
        "type": "text",
        "time": FieldValue.serverTimestamp()
      };
      messageController.clear();
      await _firestore
          .collection('chat')
          .doc(chatID)
          .collection("mychat")
          .add(message_map);
    } else {
      print("enter some message");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: StreamBuilder<DocumentSnapshot>(
          stream:
              _firestore.collection("users").doc(userMap!['uid']).snapshots(),
          builder: (context, snapshot) {
            if (snapshot.data != null) {
              return Container(
                child: Column(
                  children: [
                    Text(userMap!['name']),
                  ],
                ),
              );
            } else {
              return Container();
            }
          },
        )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.maxFinite,
                child: StreamBuilder<QuerySnapshot>(
                  stream: _firestore
                      .collection("chat")
                      .doc(chatID)
                      .collection("mychat")
                      .orderBy("time", descending: false)
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.data != null) {
                      return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          Map<String, dynamic> message_map =
                              snapshot.data!.docs[index].data()
                                  as Map<String, dynamic>;
                          return messageView(message_map, context);
                        },
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      width: 360,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        controller: messageController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            hintText: "Type Message",
                            prefixIcon: Icon(Icons.message)),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        sendMessage();
                      },
                      icon: Icon(Icons.send))
                ],
              )
            ],
          ),
        ));
  }

  Widget messageView(Map<String, dynamic> map, BuildContext context) {
    // sender message part
    return map['type'] == "text"
        ? Container(
            width: 60,
            alignment: map['sendBy'] == _auth.currentUser!.displayName
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.deepPurple,
              ),
              child: Text(
                map['message'],
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
            ),
          )
        : Container();
  }
}
