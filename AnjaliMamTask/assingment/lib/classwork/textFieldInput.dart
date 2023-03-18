import 'package:flutter/material.dart';

class myTextField extends StatefulWidget {
  const myTextField({Key? key}) : super(key: key);

  @override
  State<myTextField> createState() => _myTextFieldState();
}

class _myTextFieldState extends State<myTextField> {
  TextEditingController _valueController = new TextEditingController();
  String? result="";
  int? number;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text("Accept Values"),),
      body: Column(
        children: [TextField(
          controller: _valueController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.purple)
            )
          ),
        ),
          ElevatedButton(onPressed: (){
            setState(() {
              number = int.parse(_valueController.text.toString());
            });
            if(number! %2==0){
              print("Even");
              setState(() {
                result="Even";
              });
            }
            else{
              print("Odd");
              setState(() {
                result="Odd";
              });
            }
          },
              child: Text("Submit")),
          Text(result!, style: TextStyle(fontSize: 36),)
        ],
      ),
    );
  }
}
