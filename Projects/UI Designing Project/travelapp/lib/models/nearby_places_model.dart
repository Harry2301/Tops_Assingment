class NearbyPlacesModel {
  final String image;
  final String rating;
  final String location;
  final String end;
  final String price;
  final String desc;
  NearbyPlacesModel({
    required this.image,
    required this.rating,
    required this.location,
    required this.end,
    required this.price,
    required this.desc,
  });
}

List<NearbyPlacesModel> nearbyPlaces = [
  NearbyPlacesModel(
      image: "assets/images/dalhousie.jpg",
      rating: "4.3",
      location: "Himachal Pradesh",
      end: "Dalhousie",
      price: "\$5",
      desc:
          "Spread out over the five hills of Kathlog, Potreyn, Terah, Bakrota and Bhangora, Dalhousie is popular hill station that was founded by Lord Dalhousie in 1850 as a summer retreat. Rich in colonial architecture, the town preserves some beautiful churches."),
  NearbyPlacesModel(
      image: "assets/images/goa.jpg",
      rating: "4.1",
      location: "Goa",
      end: "Goa",
      price: "\$4",
      desc:
          "The magical land of Goa is a land of celebrations and festivities. Snuggled in the Konkan Coast Belt, It has a long coastline of approx 100 kilometers. Goa is primarily known for its beautiful beaches which are engrossed with oscillating palm trees and an astonishing nightlife."),
  NearbyPlacesModel(
      image: "assets/images/jaipur.jpg",
      rating: "4.7",
      location: "Rajasthan",
      end: "Jaipur",
      price: "\$6",
      desc:
          "Founded in AD 1727 by Maharaja Sawai Jai Singh II, Jaipur, the capital of Rajasthan is popularly known as the Pink City. With broad avenues and spacious gardens, the city is steeped in history and culture. Here the past comes alive in magnificent forts and palaces, blushed pink, where once lived the maharajas."),
  NearbyPlacesModel(
      image: "assets/images/darjeeling.jpg",
      rating: "4.5",
      location: " West Bengal",
      end: "Darjeeling",
      price: "\$5",
      desc:
          "Darjeeling is situated on a long, narrow mountain ridge of the Sikkim Himalayas that descends abruptly to the bed of the Great Rangit River. On a clear day the city affords a magnificent view of Kanchenjunga (28,169 feet [8,586 metres]), and Mount Everest can be seen from a nearby viewing point."),
  NearbyPlacesModel(
      image: "assets/images/rishikesh.jpg",
      rating: "4.4",
      location: "Uttarakhand",
      end: "Rishikesh",
      price: "\$3",
      desc:
          "Rishikesh is also known as gateway to the Char Dham. Char Dham is four popular holy temples on the hills (Kedarnath, Badrinath, Gangotri, and Yamunotri) Thousands of people attracted every year to Rishikesh for spiritual relief, peace, learn yoga, adventure and to take a dip for salvation.")
];
