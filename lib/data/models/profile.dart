import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  int? id;
  String? user;
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;
  String? image;
  String? gender;
  String? dateOfBirth;
  
  Profile({
    this.id,
    this.user,
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.image,
    this.gender,
    this.dateOfBirth,
  });
  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
