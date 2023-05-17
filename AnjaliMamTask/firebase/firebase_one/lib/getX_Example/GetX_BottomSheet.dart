import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SecondScreen"),
        ),
        body: Container(
          child: ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                    backgroundColor: Colors.deepPurple,
                    elevation: 1,
                    Container(
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.home),
                            title: Text("home"),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.settings),
                            title: Text("settings"),
                            onTap: () {},
                          )
                        ],
                      ),
                    ));
              },
              child: Text("Click here for bottom sheet")),
        ));
  }
}
