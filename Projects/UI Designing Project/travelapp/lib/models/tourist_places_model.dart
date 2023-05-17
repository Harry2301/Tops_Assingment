class TouristPlacesModel {
  final String name;
  final String image;
  TouristPlacesModel({
    required this.name,
    required this.image,
  });
}

List<TouristPlacesModel> touristPlaces = [
  TouristPlacesModel(name: "Mountains", image: "assets/images/mountain.jpg"),
  TouristPlacesModel(name: "Beach", image: "assets/images/beach.jpg"),
  TouristPlacesModel(name: "Desert", image: "assets/images/dessert.jpg"),
  TouristPlacesModel(name: "Forest", image: "assets/images/forest.jpg"),
  TouristPlacesModel(name: "Village", image: "assets/images/village.jpg"),
  TouristPlacesModel(name: "City", image: "assets/images/city.jpg"),
  TouristPlacesModel(name: "Historical", image: "assets/images/historical.jpg"),
  TouristPlacesModel(name: "Amusement", image: "assets/images/amusement.jpg"),
];
