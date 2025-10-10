import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrencesServices {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences
        .getInstance(); //todo to intlization a instance at once
  }

  static void setBool(String key, bool value) {
    _instance.setBool(
        key, value); //todo write a bool value when show a onborading
  }

  static bool getBool(String key) {
    return _instance.getBool(key) ??
        false; // todo read a bool value when show a onboradind
  }

  static void removeKey(String key) {
    _instance.remove(key); // todo remove a key in  cash when logout
  }

  static void reomveAll() {
    _instance.clear(); // todo Remove all key in the cash
  }
}
