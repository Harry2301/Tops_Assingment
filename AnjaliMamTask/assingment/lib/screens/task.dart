import 'package:flutter/material.dart';

class MyRow_Column extends StatelessWidget {
  const MyRow_Column({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text("Row & Column",),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text("MainAxisAlignment.start",style: TextStyle(
                        fontSize: 25
                    ),),
                  ],
                ),
                Container(
                  width: 450,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.pinkAccent,
                  ),
                  child: Row(
                    children: [
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("MainAxisAlignment Center",style: TextStyle(
                        fontSize: 25
                    ),),
                  ],
                ),
                Container(
                  width: 450,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.pinkAccent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("MainAxisAlignment end",style: TextStyle(
                        fontSize: 25
                    ),),
                  ],
                ),
                Container(
                  width: 450,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.pinkAccent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("MainAxisAlignment SpaceBetween",style: TextStyle(
                        fontSize: 25
                    ),),
                  ],
                ),
                Container(
                  width: 450,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.pinkAccent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("MainAxisAlignment Evenly",style: TextStyle(
                        fontSize: 25
                    ),),
                  ],
                ),
                Container(
                  width: 450,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.pinkAccent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("MainAxisAlignment SpaceAround",style: TextStyle(
                        fontSize: 25
                    ),),
                  ],
                ),
                Container(
                  width: 450,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.pinkAccent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                      Text("Open",textScaleFactor: 1.5),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}