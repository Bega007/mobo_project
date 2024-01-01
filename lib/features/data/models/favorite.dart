class Favorite
{
  int? favorite_id;
  int? user_id;
  int? item_id;
  String? name;
  double? rating;
  double? price;
  String? description;
  String? image;

  Favorite({
    this.favorite_id,
    this.user_id,
    this.item_id,
    this.name,
    this.rating,
    this.price,
    this.description,
    this.image,
  });

  factory Favorite.fromJson(Map<String, dynamic> json) => Favorite(
    favorite_id: int.parse(json['favorite_id']),
    user_id: int.parse(json['user_id']),
    item_id: int.parse(json['item_id']),
    name: json['name'],
    rating: double.parse(json['rating']),
    price: double.parse(json['price']),
    description: json['description'],
    image: json['image'],
  );
}