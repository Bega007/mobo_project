import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String id;
  final String name;

  const User({
    this.id = '',
    this.name = '',
  });

  User copy({
    String? id,
    String? name,
  }) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  static User? fromJson(Map<String, dynamic> userDataMap) {}

  Object? toJson() {}
}
