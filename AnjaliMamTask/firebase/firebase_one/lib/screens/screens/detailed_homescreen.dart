
import 'package:firebase_one/screens/widgets/textfield.dart';
import 'package:flutter/material.dart';

class detailed_homescreen extends StatefulWidget {
  Map<String, dynamic>? userMap;
  String? chatID;

  detailed_homescreen({required this.chatID, required this.userMap});

  @override
  State<detailed_homescreen> createState() => _detailed_homescreenState();
}

class _detailed_homescreenState extends State<detailed_homescreen> {
  TextEditingController messagecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Details"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                mytextfield("Type message", "Message", Icons.message,
                    messagecontroller),
                IconButton(onPressed: () {}, icon: Icon(Icons.send))
              ],
            ),
          ],
        ));
  }
}
