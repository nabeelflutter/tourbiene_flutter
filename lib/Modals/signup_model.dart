import 'dart:convert';

class SignUpUserModel {
  String? username;
  String? password;
  String? first_name;
  String? last_name;
  String? shopName;
  String? shopUrl;
  String? companyName;
  String? companyId;
  String? taxNumber;
  String? bankName;
  String? bankIBAN;
  String? phoneNumber;
  SignUpUserModel({
    this.username,
    this.password,
    this.first_name,
    this.last_name,
    this.shopName,
    this.shopUrl,
    this.companyName,
    this.companyId,
    this.taxNumber,
    this.bankName,
    this.bankIBAN,
    this.phoneNumber,
  });

  factory SignUpUserModel.fromJson(String str) =>
      SignUpUserModel.fromMap(json.decode(str));

  //String toJson() => json.encode(toMap());

  factory SignUpUserModel.fromMap(Map<String, dynamic> json) => SignUpUserModel(
        username: json["Email"],
        password: json["Password"],
        first_name: json["DisplayName"],
        last_name: json["LastName"],
        shopName: json["ShopName"],
        shopUrl: json["ShopURL"],
        companyName: json["CompanyName"],
        companyId: json["CompanyID"],
        taxNumber: json["TaxNumber"],
        bankName: json["BankName"],
        bankIBAN: json["BankIBAN"],
        phoneNumber: json["PhoneNumber"],
      );

  Map<String, dynamic> toMap() => {
        "Email": username,
        "Password": password,
        "DisplayName": first_name,
        "LastName": last_name,
        "ShopName": shopName,
        "ShopURL": shopUrl,
        "CompanyName": companyName,
        "CompanyID": companyId,
        "TaxNumber": taxNumber,
        "BankName": bankName,
        "BankIBAN": bankIBAN,
        "PhoneNumber": phoneNumber,
      };
}
