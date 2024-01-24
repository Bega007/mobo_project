// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Products _$ProductsFromJson(Map<String, dynamic> json) => Products(
      id: json['id'] as int?,
      category: json['category'] as String?,
      company: json['company'] as String?,
      title: json['title'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String?,
      price: json['price'] as int?,
      created: json['created'] as String?,
    );

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'company': instance.company,
      'title': instance.title,
      'images': instance.images,
      'description': instance.description,
      'price': instance.price,
      'created': instance.created,
    };
