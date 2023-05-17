class RecommendedPlacesModel {
  final String image;
  final String rating;
  final String location;
  final String desc;
  RecommendedPlacesModel({
    required this.image,
    required this.rating,
    required this.location,
    required this.desc,
  });
}

List<RecommendedPlacesModel> recommendedPlaces = [
  RecommendedPlacesModel(
      image: "assets/images/dubai.jpg",
      rating: "4.5",
      location: "Dubai",
      desc: "The City of Gold is known for its amazing architecture, breath-taking landmarks, the magnificent shopping festival (of course) and the warmth of its people."),
  RecommendedPlacesModel(
      image: "assets/images/maldives.jpg",
      rating: "4.9",
      location: "Maldives",
      desc: "A String Of Beautiful Ialands, Maldives Is Home To Stunning Beaches, Friendly Locals, Delicious Seafood And Thrilling Water Sports. Boasting of beautiful marine life and clear waters."),
  RecommendedPlacesModel(
      image: "assets/images/shimla.jpg",
      rating: "4.2",
      location: "Shimla",
      desc: "Shimla is popularly known as the queen of hills that spread across seven hills in the northwest Himalayas. It is situated among lush valleys and forests of rhododendron, oak, and pine, it is the capital of Himachal Pradesh that was known as the summer capital of colonial India"),
  RecommendedPlacesModel(
      image: "assets/images/queenstown.jpg",
      rating: "5",
      location: "Queenstown ",
      desc: "Queenstown, New Zealand is perhaps most famous for its natural beauty – built on Lake Wakatipu and surrounded by stunning mountain ranges such as The Remarkables, Cecil Peak, and Walter Peak."),
  RecommendedPlacesModel(
      image: "assets/images/switzerland.jpg",
      rating: "4.6",
      location: "Switzerland",
      desc: "Switzerland is a breathtakingly beautiful land-locked country in Central Europe with France to the west, Italy to the south, Austria to the east and Germany to the north. The country is famous for its scenic Alps and its rolling hills, plains, and lakes."),
];
