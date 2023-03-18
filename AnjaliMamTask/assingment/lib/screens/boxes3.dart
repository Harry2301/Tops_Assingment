import 'package:flutter/material.dart';

class boxes3 extends StatelessWidget {
  const boxes3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Containers"),
      ),
      body: Column(
        children: [
          Expanded(flex: 7,
              child: Row(
                children: [
                  Expanded(flex: 5,
                    child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.green),
          ),
                  ), SizedBox(height: 10.0, width: 10.0,),
                  Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.blue),
                                alignment: Alignment.center,
                                ),
                          ),
                          SizedBox(
                            height: 10.0,
                            width: 10.0,
                          ),
                          Expanded(
                            flex: 7,
                            child: Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.red),
                                alignment: Alignment.center,
                               ),
                          ),
                          SizedBox(
                            height: 10.0,
                            width: 10.0,
                          ),
                        ],
                      )),
                ],
              )

          ),
          SizedBox(height: 10.0,width: 10.0,),
          Expanded(flex: 3,
              child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.pink),

          )), SizedBox(height: 10.0, width: 10.0,),
        ],
      )
    );
  }
}