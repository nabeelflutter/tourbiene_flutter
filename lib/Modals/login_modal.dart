import 'dart:convert';

class SignInUserModel {
  String? _email;
  String? _password;
  SignInUserModel({
    String? email,
    String? password,
  }) {
    _email = email;
    _password = password;
  }

  SignInUserModel.fromJson(dynamic json) {
    _email = json['email'];
    _password = json['password'];
  }

  SignInUserModel copyWith({
    String? email,
    String? password,
  }) =>
      SignInUserModel(
        email: email ?? _email,
        password: password ?? _password,
      );
  String? get email => _email;
  String? get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = _email;
    map['password'] = _password;
    return map;
  }
}

SignInUserModel signInUserModelFromJson(String str) =>
    SignInUserModel.fromJson(json.decode(str));
String signInUserModelToJson(SignInUserModel data) =>
    json.encode(data.toJson());