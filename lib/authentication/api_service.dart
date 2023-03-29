import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:tourbiene/Modals/login_modal.dart';

class ApiService{
    
     Future<Map<String, dynamic>> signInUser(SignInUserModel model) async {
    Response response = await post(
      Uri.parse("http://localhost:8000/user/login"),
      body: jsonEncode(
        {'email': model.email!, 'password': model.password!},
      ),
      headers: {HttpHeaders.contentTypeHeader: 'application/json;charSet=UTF-8'},
    );
    Map<String, dynamic> data = jsonDecode(response.body);

    return data;
  }
}