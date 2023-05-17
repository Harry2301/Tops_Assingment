import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ionicons/ionicons.dart';

class Distance extends StatelessWidget {
  const Distance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Ionicons.locate_outline,
          color: Colors.black54,
          size: 14,
        ),
        Text(
          "Ahmedabad",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 3,
        ),
        ...List.generate(
          18,
          (index) {
            return Expanded(
              child: Container(
                height: 2,
                color: index.isOdd ? Colors.transparent : Colors.black54,
              ),
            );
          },
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          Ionicons.locate_outline,
          color: Color.fromARGB(255, 13, 73, 99),
          size: 14,
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          "Polo Forest",
          style: TextStyle(color: Color.fromARGB(255, 13, 73, 99)),
        ),
        SizedBox(
          width: 2,
        )
      ],
    );
  }
}
