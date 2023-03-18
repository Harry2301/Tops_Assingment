import 'package:flutter/material.dart';

class smallBoxes extends StatelessWidget {
  const smallBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(flex: 3,
            child: Row(
              children: [
                Expanded(flex: 5,
                  child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.red),),
                ),SizedBox(height: 10.0,width: 10.0,),
                Expanded(flex: 5,
                    child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.red),
                ))
              ],
            )),
        SizedBox(height: 10.0,width: 10.0,),
        Expanded(flex: 3,
          child: Row(
            children: [
              Expanded(
                child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.blue),

    ),
              ),
            ],
          ),
        ),SizedBox(height: 10.0,width: 10.0,),

            Expanded(flex: 4,
                child: Row(
                  children: [
                    Expanded(flex: 5,
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.lightBlueAccent),),
                    ),SizedBox(height: 10.0,width: 10.0,),
                    Expanded(flex: 5,
                        child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.lightBlueAccent),
                    ))
                  ],
                )),



      ],),

    );
  }
}
