import 'dart:convert';

class SignUpUserModel {
  String? email;
  String? password;
  String? displayName;
  String? lastName;
  String? shopName;
  String? shopUrl;
  String? companyName;
  String? companyId;
  String? taxNumber;
  String? bankName;
  String? bankIBAN;
  String? phoneNumber;
  SignUpUserModel({
    this.email,
    this.password,
    this.displayName,
    this.lastName,
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
        email: json["Email"],
        password: json["Password"],
        displayName: json["DisplayName"],
        lastName: json["LastName"],
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
        "Email": email,
        "Password": password,
        "DisplayName": displayName,
        "LastName": lastName,
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
