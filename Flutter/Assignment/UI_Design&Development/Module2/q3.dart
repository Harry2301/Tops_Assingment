import 'package:flutter/material.dart';
class MyCalculator_2 extends StatefulWidget {
  const MyCalculator_2({super.key});

  @override
  State<MyCalculator_2> createState() => _MyCalculator_2State();
}

class _MyCalculator_2State extends State<MyCalculator_2> {
  TextEditingController _num1Controller = new TextEditingController();
  TextEditingController _num2Controller = new TextEditingController();
  int? n1;
  int? n2;
  int? addresult = 0;
  int? subresult = 0;
  int? mulresult = 0;
  num? divresult = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
         backgroundColor: Colors.purple,
      ),
      body: Container(
        height: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 450,
                height: 80,
                child: TextField(
                  controller: _num1Controller,
                  decoration: InputDecoration(
                  hintText: ("Enter Number 1"),
                  labelText: "Number 1",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                    )
                  ),
                ),
              ),
            ),
             Padding(
               padding: const  EdgeInsets.symmetric(horizontal: 16.0),
               child: Container(
                width: 450,
                height: 80,
                child: TextField(
                  controller: _num2Controller,
                  decoration: InputDecoration(
                  hintText: ("Enter Number 2"),
                  labelText: "Number 2",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                    )
                  ),
                ),
                       ),
             ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Material(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(40),
                 child: InkWell(
                  onTap: () {
                      n1 = int.parse(_num1Controller.text.toString());
                      n2 = int.parse(_num2Controller.text.toString());
                    setState(() {
                      addresult = n1! + n2!; 
                    });
                  },
                   child: Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Text("Addition",
                    textScaleFactor: 1.5,),alignment: Alignment.center,
                   ),
                 ),
               ),
               Text("=",textScaleFactor: 2),
                Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(40),
                ),
                child:Text("${addresult}",textScaleFactor: 1.3,),alignment: Alignment.center,
               ),
             ],
           ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Material(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(40),
                 child: InkWell(
                  onTap: () {
                    setState(() {
                       n1 = int.parse(_num1Controller.text.toString());
                      n2 = int.parse(_num2Controller.text.toString());
                      subresult = n1! - n2!; 
                    });
                  },
                   child: Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Text("Substraction",
                    textScaleFactor: 1.5,),alignment: Alignment.center,
                   ),
                 ),
               ),
               Text("=",textScaleFactor: 2),
                Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text("${subresult}",
                textScaleFactor: 1.3,),alignment: Alignment.center,
               ),
             ],
           ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Material(
                 color: Colors.purple,
                borderRadius: BorderRadius.circular(40),
                 child: InkWell(
                  onTap: () {
                   setState(() {
                      n1 = int.parse(_num1Controller.text.toString());
                      n2 = int.parse(_num2Controller.text.toString());
                      mulresult = n1! * n2!; 
                   });
                  },
                   child: Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Text("Multiplication",
                    textScaleFactor: 1.5,),alignment: Alignment.center,
                   ),
                 ),
               ),
               Text("=",textScaleFactor: 2),
                Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text("${mulresult}",
                textScaleFactor: 1.3,),alignment: Alignment.center,
               ),
             ],
           ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Material(
                 color: Colors.purple,
                borderRadius: BorderRadius.circular(40),
                 child: InkWell(
                  onTap: () {
                  setState(() {
                      n1 = int.parse(_num1Controller.text.toString());
                      n2 = int.parse(_num2Controller.text.toString());
                      divresult = n1! / n2!; 
                  });
                  },
                   child: Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Text("Division",
                    textScaleFactor: 1.5,),alignment: Alignment.center,
                   ),
                 ),
               ),
               Text("=",textScaleFactor: 2),
                Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text("${divresult}",
                textScaleFactor: 1.3,),alignment: Alignment.center,
               ),
             ],
           )
          ],
        ),
      ),
    );
  }
}