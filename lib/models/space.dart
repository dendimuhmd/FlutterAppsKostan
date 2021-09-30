import 'dart:convert';

class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String map_url;
  List photos;
  int NumberOfKitchen;
  int NumberOfBedroom;
  int NumberOfCupboard;

  Space({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.city,
    required this.country,
    required this.address,
    required this.phone,
    required this.map_url,
    required this.photos,
    required this.NumberOfKitchen,
    required this.NumberOfBedroom,
    required this.NumberOfCupboard,
  });
  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    price = json['price'];
    city = json['city'];
    country = json['country'];
    address = json['address'];
    phone = json['phone'];
    map_url = json['map_url'];
    photos = json['photos'];
    NumberOfKitchen = json['NumberOfKitchen'];
    NumberOfCupboard = json['NumberOfCupboard'];
    NumberOfBedroom = json['NumberOfBedroom'];
  }
}
