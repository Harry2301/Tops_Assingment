import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon});
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey[300]!)),
        child: IconButton(
          onPressed: () {},
          constraints: BoxConstraints.tightFor(width: 40),
          color: Colors.black54,
          icon: icon,
          splashRadius: 20,
        ));
  }
}
