// ignore_for_file: public_member_api_docs, sort_constructors_first
class DataModel {
  DataModel({
    required this.name,
    required this.img,
    required this.price,
    required this.people,
    required this.stars,
    required this.description,
    required this.location,
  });

  String name;
  String img;
  int price;
  int people;
  int stars;
  String description;
  String location;

  factory DataModel.fromJson(Map<String, dynamic> jsonData) {
    return DataModel(
      name: jsonData["name"],
      img: jsonData["img"],
      price: jsonData["price"],
      people: jsonData["people"],
      stars: jsonData["stars"],
      description: jsonData["description"],
      location: jsonData["location"],
    );
  }
}
