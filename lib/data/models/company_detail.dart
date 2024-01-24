import 'package:json_annotation/json_annotation.dart';
part 'company_detail.g.dart';

@JsonSerializable()
class CompanyDetail {
  int? id;
  String? title;
  String? image;
  String? description;
  String? created;
  int? count;

  CompanyDetail({
    this.id,
      this.title,
      this.image,
      this.description,
      this.created,
      this.count
  });
  factory CompanyDetail.fromJson(Map<String, dynamic> json) =>
      _$CompanyDetailFromJson(json);
}
