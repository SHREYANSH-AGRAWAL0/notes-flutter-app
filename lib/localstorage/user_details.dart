import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalUser {
  static FlutterSecureStorage storage = const FlutterSecureStorage();

  static Future<void> save(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  static Future<String> get(String key) async {
    return await storage.read(key: key) ?? "";
  }

  static Future<void> clear() async {
    await storage.deleteAll(); 
  }
}
