import 'package:flutter/material.dart';
import 'package:travelapp/widgets/mountains.dart';
import '../models/tourist_places_model.dart';

class TouristPlaces extends StatelessWidget {
  const TouristPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  
                    return TouristDeatilsNextPage(
                      image: touristPlaces[index].image,
                      name: touristPlaces[index].name,
                    );
                  
                  
                },
              ));
            },
            child: Chip(
              label: Text(touristPlaces[index].name),
              avatar: CircleAvatar(
                backgroundImage: AssetImage(touristPlaces[index].image),
              ),
              backgroundColor: Colors.white,
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
          );
        },
        separatorBuilder: (context, index) =>
            const Padding(padding: EdgeInsets.only(right: 10)),
        itemCount: touristPlaces.length,
      ),
    );
  }
}
