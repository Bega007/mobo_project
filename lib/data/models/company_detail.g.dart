// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyDetail _$CompanyDetailFromJson(Map<String, dynamic> json) =>
    CompanyDetail(
      id: json['id'] as int?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      created: json['created'] as String?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$CompanyDetailToJson(CompanyDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'description': instance.description,
      'created': instance.created,
      'count': instance.count,
    };
