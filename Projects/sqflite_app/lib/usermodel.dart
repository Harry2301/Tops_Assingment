class UserModel {
  int? id;
  String? name;
  String? price;

  UserModelMap() {
    var mapping = Map<String, dynamic>();

    mapping["id"] = id;
    mapping["name"] = name;
    mapping["price"] = price;
    return mapping;
  }
}
