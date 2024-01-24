// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      token: json['token'] as String,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

UserRegistrationResponse _$UserRegistrationResponseFromJson(
        Map<String, dynamic> json) =>
    UserRegistrationResponse(
      id: json['id'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
      isAdmin: json['isAdmin'] as bool?,
      isCompany: json['isCompany'] as bool?,
      created: json['created'] as String?,
    );

Map<String, dynamic> _$UserRegistrationResponseToJson(
        UserRegistrationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'isAdmin': instance.isAdmin,
      'isCompany': instance.isCompany,
      'created': instance.created,
    };
