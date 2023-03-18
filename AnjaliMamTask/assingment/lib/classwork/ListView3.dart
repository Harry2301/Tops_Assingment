import 'package:flutter/material.dart';

class ListView3 extends StatefulWidget {
  const ListView3({Key? key}) : super(key: key);

  @override
  State<ListView3> createState() => _ListView3State();
}

class _ListView3State extends State<ListView3> {
  List subject=["Python","Flutter","Java","Php"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView3"),),
      body: Container(
        child: ListView.builder(
            itemCount:subject.length,
            itemBuilder: (context,index){
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${subject[index]}",style: TextStyle(fontSize: 26),),
                ),
              );
            }),
      ),
    );
  }
}
