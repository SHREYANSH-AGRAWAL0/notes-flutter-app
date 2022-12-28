
import 'dart:convert';

class User {
  String? userid;
  String? email;
  String? phone;
  String? password;
  String? fullname; 
  User({
    this.userid,
    this.email,
    this.phone,
    this.password,
    this.fullname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userid': userid,
      'email': email,
      'phone': phone,
      'password': password,
      'fullname': fullname,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userid: map['userid'] != null ? map['userid'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      fullname: map['fullname'] != null ? map['fullname'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);
}
