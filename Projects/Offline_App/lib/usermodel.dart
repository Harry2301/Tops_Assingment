class UserModel {
  int? id;
  String? name;
  String? city;

  UserModelMap() {
    var mapping = Map<String, dynamic>();

    mapping["id"] = id;
    mapping["name"] = name;
    mapping["city"] = city;
    return mapping;
  }
}
