class User {
  int user_id;
  String user_name;
  String user_lastname;
  String user_nickname;
  String user_email;
  String user_phonenumber;
  String user_password;

  User(
    this.user_id,
    this.user_name,
    this.user_lastname,
    this.user_nickname,
    this.user_email,
    this.user_phonenumber,
    this.user_password,
  );

  factory User.fromJson(Map<String, dynamic> json) => User(
        int.parse(json["user_id"]),
        json["user_name"],
        json["user_lastname"],
        json["user_nickname"],
        json["user_email"],
        json["user_phonenumber"],
        json["user_password"],
      );

  Map<String, dynamic> toJson() => {
        'user_id': user_id.toString(),
        'user_name': user_name,
        'user_lastname': user_lastname,
        'user_nickname': user_nickname,
        'user_email': user_email,
        'user_phonenumber': user_phonenumber,
        'user_password': user_password,
      };
}
