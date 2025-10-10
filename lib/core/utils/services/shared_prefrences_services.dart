import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrencesServices {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences
        .getInstance(); //todo to intlization a instance at once
  }

  static void setBool(String key, bool value) {
    _instance.setBool(key, value);
  }

  static bool getBool(String key) {
    return _instance.getBool(key) ?? false;
  }
}
