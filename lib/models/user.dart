// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

class User {
  String? email;
  String? password;
  String? name; 
  User({
    this.email,
    this.password,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
      'name': name,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      email: map['email'],
      password: map['password'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);
}
