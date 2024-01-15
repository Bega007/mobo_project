// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      username: json['username'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'username': instance.username,
      'token': instance.token,
    };

UserRegistrationResponse _$UserRegistrationResponseFromJson(
        Map<String, dynamic> json) =>
    UserRegistrationResponse(
      id: json['id'] as int?,
      dateJoined: json['dateJoined'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      email: json['email'] as String?,
      isStaff: json['isStaff'] as bool?,
      isCompany: json['isCompany'] as bool?,
    );

Map<String, dynamic> _$UserRegistrationResponseToJson(
        UserRegistrationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateJoined': instance.dateJoined,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'isStaff': instance.isStaff,
      'isCompany': instance.isCompany,
    };
