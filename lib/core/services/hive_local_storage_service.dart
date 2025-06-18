import 'package:hive_flutter/hive_flutter.dart';

class HiveLocalStorageService {
  final Box box = Hive.box('localStorage');

  Future<void> saveUserData(Map<String, dynamic> user) async {
    await box.put('user', user);
  }

  Map<String, dynamic> getUserData() {
    return Map<String, dynamic>.from(box.get('user') ?? {});
  }

  Future<void> clearUserData() async {
    await box.delete('user');
  }

  Future<void> savePreference(String key, dynamic value) async {
    await box.put(key, value);
  }

  dynamic getPreference(String key) {
    return box.get(key);
  }
}
