import 'dart:convert';

import 'package:http/http.dart' as http;
class PostApiService{
  Future<dynamic> sendbutton(String name,age,phno,pin,email,pass) async {
    var client = http.Client();
    var apiUrl = Uri.parse("http://localhost:3001/api/blog/signup");
    var response = await client.post(apiUrl,
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String, String>{
          "name": name,
          "age": age,
          "phno": phno,
          "email": email,
          "pass":pass,


        }
        )
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    else {
      throw Exception("Failure");
    }
  }
}