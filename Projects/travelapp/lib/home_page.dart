import 'package:flutter/material.dart';
import 'package:travelapp/welcome_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travelapp/widgets/custom_icon_buttons.dart';
import 'package:travelapp/widgets/distance.dart';
import 'package:travelapp/widgets/location_card.dart';
import 'package:travelapp/widgets/nearby_places.dart';
import 'package:travelapp/widgets/recommended_places.dart';
import 'package:travelapp/widgets/tourist_places.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Morning,",
              style:
                  //Theme.of(context).textTheme.labelLarge
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Harry",
              style:
                  //Theme.of(context).textTheme.labelMedium,

                  TextStyle(fontSize: 18),
            ),
          ],
        ),
        actions: [
          CustomIconButton(icon: Icon(Ionicons.search_outline)),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 12),
            child: CustomIconButton(icon: Icon(Ionicons.notifications_outline)),
          ),
        ],
      ),

      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          //location card
          LocationCard(),
          SizedBox(
            height: 15,
          ),
          TouristPlaces(),
          SizedBox(
            height: 10,
          ),

          //recommendations
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommendations",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: () {}, child: Text("View All"))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          //recommendations
          RecommendedPlaces(),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nearby From You",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: () {}, child: Text("View All"))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          NearbyPlaces(),
          //SizedBox(height: 10,),

          //categories
        ],
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          color: Color.fromARGB(255, 11, 91, 126),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
              backgroundColor: Color.fromARGB(255, 11, 91, 126),
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Color.fromARGB(162, 12, 145, 202),
              padding: EdgeInsets.all(16),
              onTabChange: (index) {
                print(index);
              },
              gap: 8,
              tabs: [
                GButton(
                  icon: Ionicons.home_outline,
                  text: " Home",
                ),
                GButton(
                  icon: Ionicons.bookmark_outline,
                  text: " Bookmarks",
                ),
                GButton(
                  icon: Ionicons.ticket_outline,
                  text: " Tickets",
                ),
                GButton(
                  icon: Ionicons.person_outline,
                  text: " Account",
                ),
              ]),
        ),
      ),

      //backgroundColor: Colors.blueAccent,
    );
  }
}
