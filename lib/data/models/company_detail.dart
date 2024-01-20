import 'package:json_annotation/json_annotation.dart';
part 'company_detail.g.dart';

@JsonSerializable()
class CompanyDetail {
  int? id;
  String? ownerCompany;
  String? title;
  String? image;
  String? description;
  String? created;

  CompanyDetail({
    this.id,
    this.ownerCompany,
    this.title,
    this.image,
    this.description,
    this.created,
  });
  factory CompanyDetail.fromJson(Map<String, dynamic> json) =>
      _$CompanyDetailFromJson(json);
}
