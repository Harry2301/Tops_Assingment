import 'package:flutter/material.dart';
import 'nav_screen2.dart';

class ValuePass extends StatefulWidget {
  // String? message;
  // ValuePass({@required this.message});

  @override
  State<ValuePass> createState() => _ValuePassState();
}

class _ValuePassState extends State<ValuePass> {
  TextEditingController message = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pass Value to other page")),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: message,
              decoration: InputDecoration(
                  labelText: "Enter msg",
                  hintText: "Message",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return nav_screen2(message.text);
                    },
                  ));
                },
                child: Text("Save"))
          ],
        ),
      ),
    );
  }
}
