import 'package:firebase_one/getX_Example/GetX_BottomSheet.dart';
import 'package:firebase_one/getX_Example/GetX_Dialog.dart';
import 'package:firebase_one/getX_Example/GetX_SnackBar.dart';
import 'package:firebase_one/getX_Example/second_screen_GetX.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyScreenGetX extends StatefulWidget {
  const MyScreenGetX({super.key});

  @override
  State<MyScreenGetX> createState() => _MyScreenGetXState();
}

class _MyScreenGetXState extends State<MyScreenGetX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Example"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(MySecondScreen());
                },
                child: Text("Click here for 2nd screen")),
            ElevatedButton(
                onPressed: () {
                  Get.to(MySnackBar());
                },
                child: Text("Snackbar screen")),
            ElevatedButton(
                onPressed: () {
                  Get.to(MyGetXDialog());
                },
                child: Text("Dialog screen")),
            ElevatedButton(
                onPressed: () {
                  Get.to(MyBottomSheet());
                },
                child: Text("MyBottomSheet")),
          ],
        ),
      ),
    );
  }
}
