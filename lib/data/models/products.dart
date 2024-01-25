import 'package:json_annotation/json_annotation.dart';

part 'products.g.dart';

@JsonSerializable()
class Products {
  int? id;
  String? category;
  String? company;
  String? title;
  List<String>? images;
  String? description;
  int? price;
  String? created;

  Products({
    this.id,
    this.category,
    this.company,
    this.title,
    this.images,
    this.description,
    this.price,
    this.created,
  });

  factory Products.fromJson(Map<String, dynamic> json) => _$ProductsFromJson(json);
}
