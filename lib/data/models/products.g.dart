// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Products _$ProductsFromJson(Map<String, dynamic> json) => Products(
      id: json['id'] as int?,
      category: json['category'] as String?,
      company: json['company'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      created: json['created'] as String?,
      isNew: json['isNew'] as bool?,
    );

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'company': instance.company,
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'created': instance.created,
      'isNew': instance.isNew,
    };
