import 'package:flutter/material.dart';

Widget mytextfield(String hint_text, String label_text, IconData icon,
    TextEditingController controller) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 340,
        height: 60,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: hint_text,
              labelText: label_text,
              prefixIcon: Icon(icon)),
        ),
      ),
    ),
  );
}
