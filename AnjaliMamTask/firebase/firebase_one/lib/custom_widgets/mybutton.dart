import 'package:flutter/material.dart';

Widget myCustomButton(String buttontext, Color colorname, Color textColor) {
  return Container(
    height: 40,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(26),
      color: colorname,
    ),
    alignment: Alignment.center,
    child: Text(buttontext,style: TextStyle(color: textColor),),
  );
}
