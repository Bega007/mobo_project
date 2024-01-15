import 'package:shared_preferences/shared_preferences.dart';

class AppPrefsService {
  final SharedPreferences _prefs;

  AppPrefsService(this._prefs);

  /// Returns all keys in the persistent storage.
  Set<String> getKeys() => _prefs.getKeys();

  /// Reads a value of any type from persistent storage.
  Object? get(String key) => _prefs.get(key);

  /// Reads a value from persistent storage, throwing an exception if it's not a
  /// bool.
  bool? getBool(String key) => _prefs.getBool(key);

  /// Reads a value from persistent storage, throwing an exception if it's not
  /// an int.
  int? getInt(String key) => _prefs.getInt(key);

  /// Reads a value from persistent storage, throwing an exception if it's not a
  /// double.
  double? getDouble(String key) => _prefs.getDouble(key);

  /// Reads a value from persistent storage, throwing an exception if it's not a
  /// String.
  String? getString(String key) => _prefs.getString(key);

  /// Returns true if persistent storage the contains the given [key].
  bool containsKey(String key) => _prefs.containsKey(key);

  /// Reads a set of string values from persistent storage, throwing an
  /// exception if it's not a string set.
  List<String>? getStringList(String key) => _prefs.getStringList(key);

  /// Saves a boolean [value] to persistent storage in the background.
  // ignore: avoid_positional_boolean_parameters
  Future<bool> setBool(String key, bool value) => _prefs.setBool(key, value);

  /// Saves an integer [value] to persistent storage in the background.
  Future<bool> setInt(String key, int value) => _prefs.setInt(key, value);

  /// Saves a double [value] to persistent storage in the background.
  ///
  /// Android doesn't support storing doubles, so it will be stored as a float.
  Future<bool> setDouble(String key, double value) => _prefs.setDouble(key, value);

  /// Saves a string [value] to persistent storage in the background.
  ///
  /// Note: Due to limitations in Android's SharedPreferences,
  /// values cannot start with any one of the following:
  ///
  /// - 'VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu'
  /// - 'VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy'
  /// - 'VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu'
  Future<bool> setString(String key, String value) => _prefs.setString(key, value);

  /// Saves a list of strings [value] to persistent storage in the background.
  Future<bool> setStringList(String key, List<String> value) => _prefs.setStringList(key, value);

  /// Removes an entry from persistent storage.
  Future<bool> remove(String key) => _prefs.remove(key);

  /// Completes with true once the user preferences for the app has been cleared.
  Future<bool> clear() => _prefs.clear();
}
