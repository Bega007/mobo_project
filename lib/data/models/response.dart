import 'package:json_annotation/json_annotation.dart';
part 'response.g.dart';


@JsonSerializable()
class LoginResponse {
  // final String username;
  final String token;

  LoginResponse({
    // required this.username,
    required this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserRegistrationResponse {
  int? id;
  String? dateJoined;
  String? firstName;
  String? lastName;
  String? username;
  String? password;
  String? email;
  bool? isStaff;
  bool? isCompany;

  UserRegistrationResponse(
      {this.id,
      this.dateJoined,
      this.firstName,
      this.lastName,
      this.username,
      this.password,
      this.email,
      this.isStaff,
      this.isCompany});

      factory UserRegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationResponseFromJson(json);
}
