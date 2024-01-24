import 'package:json_annotation/json_annotation.dart';
part 'category.g.dart';

@JsonSerializable()
class Category {
  int? id;
  String? name;
  String? image;
  String? created;

  Category({this.id, this.name, this.image, this.created});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
