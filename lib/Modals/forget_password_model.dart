// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class ForgetPasswprdModel {
  String? _old_password;
  String? _password;
  ForgetPasswprdModel({
    String? old_password,
    String? password,
  }) {
    _old_password = old_password;
    _password = password;
  }

  ForgetPasswprdModel.fromJson(dynamic json) {
    _old_password = json['old_password'];
    _password = json['password'];
  }

  ForgetPasswprdModel copyWith({
    String? old_password,
    String? password,
  }) =>
      ForgetPasswprdModel(
        old_password: old_password ?? _old_password,
        password: password ?? _password,
      );
  String? get old_password => _old_password;
  String? get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['old_password'] = _old_password;
    map['password'] = _password;
    return map;
  }
}

ForgetPasswprdModel signInUserModelFromJson(String str) =>
    ForgetPasswprdModel.fromJson(json.decode(str));
String signInUserModelToJson(ForgetPasswprdModel data) =>
    json.encode(data.toJson());