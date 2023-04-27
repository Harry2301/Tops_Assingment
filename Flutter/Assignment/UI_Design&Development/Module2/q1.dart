import "package:flutter/material.dart";

class MyReverseNumber extends StatefulWidget {
  const MyReverseNumber({super.key});

  @override
  State<MyReverseNumber> createState() => _MyReverseNumberState();
}

class _MyReverseNumberState extends State<MyReverseNumber> {
  TextEditingController numcontroller = new TextEditingController();
  String? number = "";

  void _updateReverse() {
    String input = numcontroller.text;
    String reversed = '';
    for (int i = input.length - 1; i >= 0; i--) {
      reversed += input[i];
    }
    setState(() {
      number = reversed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reverse Number"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: numcontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Enter Number"),
                  onChanged: (value) => _updateReverse(),
            ),
            Text(
                'Reverse: $number',
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }
}
