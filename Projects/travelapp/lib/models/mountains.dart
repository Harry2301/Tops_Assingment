class Mountains {
  final String image;
  final String name;
  Mountains({
    required this.image,
    required this.name,
  });
}

List<Mountains> mountains = [
  Mountains(image: "assets/images/SwissAlps.jpg", name: "Swiss Alps"),
  Mountains(image: "assets/images/TableMountain.jpeg", name: "Table Mountain"),
  Mountains(image: "assets/images/Kirkjufell.jpg", name: "Kirkjufell"),
  Mountains(image: "assets/images/Vinicunca.jpg", name: "Vinicunca"),
  Mountains(image: "assets/images/NangaParbat.jpg", name: "Nanga Parbat"),
];
