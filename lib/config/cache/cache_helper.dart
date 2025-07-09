import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  // ignore: unused_field
  static late SharedPreferences _pref;
  Future<void> init() async {
    _pref = await SharedPreferences.getInstance();
  }

  // storage in memory using SharedPreferences instance
  Future<void> set({required String key, required dynamic value}) async {
    if (value is String) {
      _pref.setString(key, value);
    } else if (value is int) {
      _pref.setInt(key, value);
    } else if (value is bool) {
      _pref.setBool(key, value);
    } else if (value is double) {
      _pref.setDouble(key, value);
    } else if (value is List<String>) {
      _pref.setStringList(key, value);
    } else {
      throw UnimplementedError('error type ');
    }
  }

  /// Removes the value associated with the given key from SharedPreferences.
  Future<void> remove({required String key}) async {
    await _pref.remove(key);
  }
  /// Clears all values from SharedPreferences.
  Future<void> clear() async {
    await _pref.clear();
  }
  String? getString({required String key}) {
    return _pref.getString(key);
  }
  int? getInt({required String key}) {
    return _pref.getInt(key);
  }
  bool? getBool({required String key}) {
    return _pref.getBool(key);
  }
  double? getDouble({required String key}) {
    return _pref.getDouble(key);
  }
  List<String>? getStringList({required String key}) {
    return _pref.getStringList(key);
  }
}
