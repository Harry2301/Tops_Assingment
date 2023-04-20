class Student {
  int? id;
  String? name;
  String? contact;

  StudendMap() {
    var mapping = Map<String, dynamic>();

    mapping['id'] = id ?? null;
    mapping['name'] = name!;
    mapping['contact'] = contact!;

    return mapping;
  }
}
