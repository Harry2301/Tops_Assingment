import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travelapp/widgets/tourist_detail_page.dart';

import '../models/nearby_places_model.dart';
import 'distance.dart';

class NearbyPlaces extends StatelessWidget {
  const NearbyPlaces({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbyPlaces.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 135,
            width: double.maxFinite,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TouristDetailsPage(
                            image: nearbyPlaces[index].image,
                            name: nearbyPlaces[index].location,
                            desc: nearbyPlaces[index].desc,
                            rating: nearbyPlaces[index].rating,
                          ),
                        ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          nearbyPlaces[index].image,
                          height: double.maxFinite,
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${nearbyPlaces[index].end}",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text("${nearbyPlaces[index].location}"),
                            SizedBox(
                              height: 10,
                            ),
                            // Distance Wiget
                            Distance(),
                            Spacer(),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow.shade700,
                                  size: 14,
                                ),
                                Text(
                                  "${nearbyPlaces[index].rating}",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Spacer(),
                                RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 13, 73, 99),
                                        ),
                                        text: "${nearbyPlaces[index].price}",
                                        children: const [
                                      TextSpan(
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54),
                                          text: "/ Person")
                                    ]))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
