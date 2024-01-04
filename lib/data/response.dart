import 'package:json_annotation/json_annotation.dart';
part 'response.g.dart';


@JsonSerializable()
class LoginResponse {
  final String username;
  final String token;

  LoginResponse({
    required this.username,
    required this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}
