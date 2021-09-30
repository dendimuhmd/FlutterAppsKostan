class City {
  int id;
  String name;
  String ImageUrl;
  bool IsPopular;

  City(
      {required this.id,
      required this.ImageUrl,
      required this.name,
      this.IsPopular = false});
}
