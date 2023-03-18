import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  const ListView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListViewBuilder"),),
      body: Container(
        child: ListView.builder(
          itemCount: 10,
            itemBuilder: (context, index){
            return Container(
              child: Text(index.toString(), style: TextStyle(fontSize: 40),),
            );
            },),
      ),
    );
  }
}
