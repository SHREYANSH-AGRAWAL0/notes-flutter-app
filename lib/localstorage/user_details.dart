import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalUser {
  static FlutterSecureStorage storage = const  FlutterSecureStorage();

  Future<void> save(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  Future<String> get(String key) async {
    return await storage.read(key: key) ?? "";
  }
}