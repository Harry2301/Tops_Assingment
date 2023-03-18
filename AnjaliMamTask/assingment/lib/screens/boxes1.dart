import 'package:flutter/material.dart';

class boxes1 extends StatelessWidget {
  const boxes1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10.0,
            width: 10.0,
          ),
          Expanded(
            flex: 2,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.green),
              )),
          SizedBox(
            height: 10.0,
            width: 10.0,
          ),
          Expanded(flex: 2,
              child: Row(children: [
                Expanded(flex: 2,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.blue),
                    )),
                SizedBox(
                  height: 10.0,
                  width: 10.0,
                ),
                Expanded(flex: 8,
                    child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.red),

                )),
                SizedBox(
                  height: 10.0,
                  width: 10.0,
                ),
              ],)),
          SizedBox(
            height: 10.0,
            width: 10.0,
          ),
          Expanded(flex: 5,
              child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.purple),

          )),
          SizedBox(
            height: 10.0,
            width: 10.0,
          ),
          Expanded(flex: 1,
              child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.blue),

          )), SizedBox(height: 10.0,width: 10.0,)
        ],
      ),
    );
  }
}
