// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class ResetPasswprdModel {
   String? old_password;
  String? password;
 
  ResetPasswprdModel({
    this.old_password,
    this.password,
  
  });

  factory ResetPasswprdModel.fromJson(String str) =>
      ResetPasswprdModel.fromMap(json.decode(str));

  //String toJson() => json.encode(toMap());

  factory ResetPasswprdModel.fromMap(Map<String, dynamic> json) => ResetPasswprdModel(
        old_password: json["old_password"],
        password: json["password"],
    
      );

  Map<String, dynamic> toMap() => {
        "old_password": old_password,
        "password": password,
       
      };
}