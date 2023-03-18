import 'package:flutter/material.dart';

class ListView4 extends StatefulWidget {
  const ListView4({Key? key}) : super(key: key);

  @override
  State<ListView4> createState() => _ListView4State();
}

class _ListView4State extends State<ListView4> {
  TextEditingController mycontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView4"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: mycontroller,
              decoration: InputDecoration(
                hintText: "Enter Subjects",
                labelText: "Subjects",
              ),
            ),
            SizedBox(height: 10.0,width: 10.0,),
            ElevatedButton(onPressed: (){}, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
