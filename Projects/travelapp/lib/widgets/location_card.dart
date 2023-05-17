import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rive/rive.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
                height: 80,
                width: 80,
                child: RiveAnimation.asset("assets/animations/location.riv")),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Location",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Color.fromARGB(255, 13, 73, 99)
                        ),
                        ),
                        SizedBox(height: 5,),
                        Text("Ahmedabad, India",
                        style: Theme.of(context).textTheme.labelLarge,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
