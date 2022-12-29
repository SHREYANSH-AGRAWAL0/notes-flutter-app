import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/user.dart';

class UserService {
  static const String _baseUri = "https://notes-api-4a3c.onrender.com/users";

  static Future<User> signUp(User user) async {
    Uri responseUri = Uri.parse("$_baseUri/addUser");
    var response = await http.post(responseUri, body: user);
    var decoded = jsonDecode(response.body);
    return decoded.newUser;
  }

  static Future<User> login(User user) async {
    Uri responseUri = Uri.parse("$_baseUri/login");
    var response = await http.post(responseUri, body: user);
    var decoded = jsonDecode(response.body);
    return decoded.founduser;
  }
}
