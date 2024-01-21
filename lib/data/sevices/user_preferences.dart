import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user.dart';

class RememberUserPrefs {
  //save-remember User-info
  static Future<void> storeUserInfo(User userInfo) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final String userJsonData = jsonEncode(userInfo.toJson());
    await preferences.setString('currentUser', userJsonData);
  }

  //get-read User-info
  static Future<User?> readUserInfo() async {
    User? currentUserInfo;
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final String? userInfo = preferences.getString('currentUser');
    final Map<String, dynamic> userDataMap = jsonDecode(userInfo!);
    // ignore: join_return_with_assignment
    currentUserInfo = User.fromJson(userDataMap);
    return currentUserInfo;
  }

  static Future<void> removeUserInfo() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove('currentUser');
  }
}
