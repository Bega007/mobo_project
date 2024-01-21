import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:state_notifier/state_notifier.dart';

import 'models/response.dart';
import 'sevices/shared_preferences.dart';

class LoggedInUser {
  // final String username;
  final String accessToken;

  LoggedInUser({
    // required this.username,
    required this.accessToken,
  });

  LoggedInUser copyWith({
    String? username,
    String? accessToken,
  }) {
    return LoggedInUser(
      // username: username ?? this.username,
      accessToken: accessToken ?? this.accessToken,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      // 'username': username,
      'access_token': accessToken,
    };
  }

  factory LoggedInUser.fromMap(Map<String, dynamic> map) {
    return LoggedInUser(
      // username: map['username'] as String,
      accessToken: map['access_token'] as String,
    );
  }

  String toJsonString() => json.encode(toMap());

  factory LoggedInUser.fromJson(String source) => LoggedInUser.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );
}

class AuthController extends StateNotifier<LoggedInUser?> {
  // ignore: constant_identifier_names
  static const _LoggedInUser = 'logged_in_user';

  final AppPrefsService _service;

  String? get authToken => state?.accessToken;

  AuthController(this._service, super.state);

  static LoggedInUser? initialState(AppPrefsService service) {
    LoggedInUser? user;

    try {
      final userJsonString = service.getString(_LoggedInUser);
      if (userJsonString != null) {
        user = LoggedInUser.fromJson(userJsonString);
      } else {
        user = null;
      }
    } catch (e) {
      //ignored
    }

    return user;
  }

  void onSignedIn(LoginResponse response) {
    final newState = LoggedInUser(
      // username: response.username,
      accessToken: response.token,
    );
    state = newState;

    try {
      /*await*/ _service.setString(_LoggedInUser, newState.toJsonString());
    } catch (e) {
      //no-op
    }
  }

  Future<void> signOut() async {
    state = null;

    try {
      await _service.remove(_LoggedInUser);
    } catch (e) {
      //ignored
    }
  }
}
