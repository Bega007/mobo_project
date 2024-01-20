import 'package:json_annotation/json_annotation.dart';
part 'products.g.dart';

@JsonSerializable()
class Products {
  int? id;
  String? category;
  String? company;
  String? image;
  String? title;
  String? description;
  int? price;
  String? created;
  bool? isNew;

  Products({
    this.id,
    this.category,
    this.company,
    this.image,
    this.title,
    this.description,
    this.price,
    this.created,
    this.isNew,
  });
   factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}
