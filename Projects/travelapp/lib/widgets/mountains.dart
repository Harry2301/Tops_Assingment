import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travelapp/models/mountains.dart';
import 'package:travelapp/models/tourist_places_model.dart';
import 'distance.dart';
import 'package:travelapp/models/recommended_places_model.dart';

class TouristDeatilsNextPage extends StatelessWidget {
  const TouristDeatilsNextPage({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Center(
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            SizedBox(
              height: size.height * 0.38,
              width: double.maxFinite,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Text(
              "   Explore",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 235,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 220,
                      child: Card(
                        color: Color.fromARGB(209, 240, 248, 251),
                        elevation: 0.4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        )),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    
                                    mountains[index].image,
                                    width: double.maxFinite,
                                    fit: BoxFit.cover,
                                    height: 170,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  mountains[index].name,
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      Padding(padding: EdgeInsets.only(right: 10)),
                  itemCount: mountains.length),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 11, 91, 126),
                  elevation: 0,
                  shape: StadiumBorder(),
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                ),
                child: const Text("Join this tour"),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
