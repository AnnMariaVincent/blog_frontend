// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
  String name;
  String age;
  String phoneno;
  String pin;
  String email;
  String password;

  Post({
    required this.name,
    required this.age,
    required this.phoneno,
    required this.pin,
    required this.email,
    required this.password,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    name: json["name"],
    age: json["age"],
    phoneno: json["phoneno"],
    pin: json["pin"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "phoneno": phoneno,
    "pin": pin,
    "email": email,
    "password": password,
  };
}
