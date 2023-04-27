import "package:flutter/material.dart";

Widget mycustomButton(String text, Color colorname) {
  return Container(
      height: 40,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: colorname),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(fontSize: 25, color: Colors.white),
      ));
}
