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
  String? firstName;
  String? lastName;
  String? username;
  String? password;
  String? email;
  bool? isAdmin;
  bool? isCompany;
  String? created;

  UserRegistrationResponse(
      {this.id,
      this.firstName,
      this.lastName,
      this.username,
      this.password,
      this.email,
      this.isAdmin,
      this.isCompany,
      this.created});
      factory UserRegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationResponseFromJson(json);
}
