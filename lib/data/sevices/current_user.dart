import '../models/user.dart';
import 'user_preferences.dart';

class CurrentUser {
   User _currentUser = const User( id: '', name: '',);
   User get user => _currentUser;

   getUserInfo() async {
     final User? getUserInfoFromLocalStorage = await RememberUserPrefs.readUserInfo();
     _currentUser = getUserInfoFromLocalStorage!;
   }
 }
