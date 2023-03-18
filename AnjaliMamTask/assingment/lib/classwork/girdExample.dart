import 'package:flutter/material.dart';

class GridExample extends StatefulWidget {
  const GridExample({Key? key}) : super(key: key);

  @override
  State<GridExample> createState() => _GridExampleState();
}

class _GridExampleState extends State<GridExample> {
  List<Map> mydata = List.generate(20, (index) => {'id': index, 'title': 'MyData$index'}).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView"),),
      body: Container(child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2/5,
          ),
          itemCount: mydata.length,
          itemBuilder: (context, index){
            return Container(
            child: Text(mydata[index]['title'].toString() + mydata[index]['id'].toString()),
            );
    },),
      ));
  }
}
