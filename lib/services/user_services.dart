import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import '../models/user.dart';

class UserService {
  static const String _baseUri = "https://notes-api-4a3c.onrender.com/users";

  static Future<String> signUp(User user) async {
    Uri responseUri = Uri.parse("$_baseUri/signUp");
    var response = await http.post(responseUri, body: user.toMap());
    var decoded = jsonDecode(response.body);
    log(decoded);
    return decoded;
  }

  static Future<dynamic> signIn(User user) async {
    Uri responseUri = Uri.parse("$_baseUri/signIn");
    var response = await http.post(responseUri, body: user.toMap());
    var decoded = jsonDecode(response.body);
    log(decoded.toString());
    return decoded; 
    // return decoded; //gives back the userdetails
  }
}
