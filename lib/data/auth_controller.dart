import 'dart:convert';

// ignore: depend_on_referenced_packages
import 'package:state_notifier/state_notifier.dart';

import 'models/response.dart';
import 'sevices/shared_preferences.dart';

class LoggedInUser {
  // final String username;
  final String authToken;

  LoggedInUser({
    // required this.username,
    required this.authToken,
  });

  LoggedInUser copyWith({
    // String? username,
    String? authToken,
  }) {
    return LoggedInUser(
      // username: username ?? this.username,
      authToken: authToken ?? this.authToken,
    );
  }
}

class AuthController extends StateNotifier<LoggedInUser?> {
  // ignore: constant_identifier_names
  static const _Username = 'username';
  static const _AuthToken = 'auth_token';

  final AppPrefsService _service;

  String? get authToken => state?.authToken;

  AuthController(this._service, super.state);

  static LoggedInUser? initialState(AppPrefsService service) {
    // String username = '';
    String? authToken;

    try {
      authToken = service.getString(_AuthToken);
      // username = service.getString(_UserName) ?? '';
    } catch (e) {
      //ignored
    }

    if(authToken != null){
      return LoggedInUser(
        // username: username,
        authToken: authToken,
      );
    }

    return null;
  }

  void onSignedIn(LoginResponse response) {
    final newState = LoggedInUser(
      // username: response.username,
      authToken: response.token,
    );
    state = newState;

    try {
      // _service.setString(_UserName, newState.username);
      _service.setString(_AuthToken, newState.authToken);
    } catch (e) {
      //no-op
    }
  }

  Future<void> signOut() async {
    state = null;

    try {
      await _service.remove(_AuthToken);
      // await _service.remove(_UserName);
    } catch (e) {
      //ignored
    }
  }
}
