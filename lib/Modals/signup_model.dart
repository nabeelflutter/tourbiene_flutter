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
        username: json["email"],
        password: json["password"],
        first_name: json["first_name"],
        last_name: json["last_name"],
        shopName: json["shop_name"],
        shopUrl: json["shop_url"],
        companyName: json["company_name"],
        companyId: json["company_id"],
        taxNumber: json["tax_number"],
        bankName: json["bank_name"],
        bankIBAN: json["bank_iban"],
        phoneNumber: json["phone_number"],
      );

  Map<String, dynamic> toMap() => {
        "email": username,
        "password": password,
        "first_name": first_name,
        "last_name": last_name,
        "shop_name": shopName,
        "shop_url": shopUrl,
        "company_name": companyName,
        "company_id": companyId,
        "tax_number": taxNumber,
        "bank_name": bankName,
        "bank_iban": bankIBAN,
        "phone_number": phoneNumber,
      };
}
