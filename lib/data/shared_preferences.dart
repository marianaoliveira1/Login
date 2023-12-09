import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService{
  static SharedPreferences? _sharedPreferences;
  static Future<SharedPreferences> getInstance() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    return _sharedPreferences!;
  }
}