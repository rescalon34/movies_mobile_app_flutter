import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefHelper {
  void setString(String key, String value);

  String? getString(String key);
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

  static String userNameKey = "user_name";
}
