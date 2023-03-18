import 'package:flutter/material.dart';
//abhi baaki h ye
class radioButton extends StatefulWidget {
  const radioButton({Key? key}) : super(key: key);

  @override
  State<radioButton> createState() => _radioButtonState();
}

class _radioButtonState extends State<radioButton> {
  @override
  Widget build(BuildContext context) {
    String? gender="";
    return Scaffold(
      appBar: AppBar(title: Text("Radio Button"),),
      body: Column(
        children: [
          RadioListTile(value: "Male",
              title: Text("Male"), groupValue: gender,
              onChanged: (value){
            setState(() {
              gender = value.toString();
            });
              }),
          RadioListTile(value: "Female",
              title: Text("Female"),
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              })
        ],
      ),
    );
  }
}
