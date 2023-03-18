import 'package:flutter/material.dart';

class boxes extends StatelessWidget {
  const boxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Column Task"),
      ),

      body: Column(children: [
        SizedBox(
          height: 10.0,
          width: 10.0,
        ),
        Expanded(
          flex: 4,
          child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Color(0xFF8d4383)),
              alignment: Alignment.center,
              child: Text(
                "#8d4383",
              )),
        ),
        SizedBox(
          height: 10.0,
          width: 10.0,
        ),
        Expanded(
          flex: 4,
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.green),
                    alignment: Alignment.center,
                    child: Text(
                      "#2AA650",
                    )),
              ),
              SizedBox(
                height: 10.0,
                width: 10.0,
              ),

              Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.blue),
                            alignment: Alignment.center,
                            child: Text(
                              "Blue color",
                            )),
                      ),
                      SizedBox(
                        height: 10.0,
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.red),
                            alignment: Alignment.center,
                            child: Text(
                              "Red color",
                            )),
                      ),
                      SizedBox(
                        height: 10.0,
                        width: 10.0,
                      ),
                    ],
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
          width: 10.0,
        ),
        Expanded(
          flex: 2,
          child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.yellow),
              alignment: Alignment.center,
              child: Text(
                "Yellow",
              )),
        ),
        SizedBox(
          height: 10.0,
          width: 10.0,
        ),
      ]),

    );
  }
}