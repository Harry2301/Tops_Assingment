import 'package:flutter/material.dart';

Widget myCustomTextFeild(String hinttext, String labelText, IconData icon,
    TextEditingController controller) {
  return Container(
    child: Padding(
        padding: EdgeInsets.all(12),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hinttext,
              labelText: labelText,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        )),
  );
}
