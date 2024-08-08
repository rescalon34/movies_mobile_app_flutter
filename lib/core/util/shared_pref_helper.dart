import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefHelper {
  void setString(String key, String value);

  String? getString(String key);

  void setBoolean(String key, bool value);

  bool? getBoolean(String key);
}

class SharedPrefHelperImpl implements SharedPrefHelper {
  final SharedPreferences _sharedPreferences;

  const SharedPrefHelperImpl(this._sharedPreferences);

  @override
  String? getString(String key) {
    return _sharedPreferences.getString(key);
  }

  @override
  void setString(String key, String value) {
    _sharedPreferences.setString(key, value);
  }

  @override
  bool? getBoolean(String key) {
    return _sharedPreferences.getBool(key) ?? false;
  }

  @override
  void setBoolean(String key, bool value) {
    _sharedPreferences.setBool(key, value);
  }

  static String userNameKey = "user_name";
  static String isUserLoggedIn = "user_logged_in";
}
