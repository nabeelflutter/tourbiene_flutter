// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class ResetPasswprdModel {
  String? _old_password;
  String? _password;
  ResetPasswprdModel({
    String? old_password,
    String? password,
  }) {
    _old_password = old_password;
    _password = password;
  }

  ResetPasswprdModel.fromJson(dynamic json) {
    _old_password = json['old_password'];
    _password = json['password'];
  }

  ResetPasswprdModel copyWith({
    String? old_password,
    String? password,
  }) =>
      ResetPasswprdModel(
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

ResetPasswprdModel signInUserModelFromJson(String str) =>
    ResetPasswprdModel.fromJson(json.decode(str));
String signInUserModelToJson(ResetPasswprdModel data) =>
    json.encode(data.toJson());