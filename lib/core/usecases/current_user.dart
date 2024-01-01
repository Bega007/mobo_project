import 'package:mobo_project/core/usecases/user_preferences.dart';
import 'package:mobo_project/features/data/models/user.dart';

class CurrentUser {
  User _currentUser = User(0, '', '', '', '', '', '');
  User get user => _currentUser;

  getUserInfo() async {
    User? getUserInfoFromLocalStorage = await RememberUserPrefs.readUserInfo();
    _currentUser = getUserInfoFromLocalStorage!;
  }
}
