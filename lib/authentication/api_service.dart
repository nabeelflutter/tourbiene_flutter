import 'dart:convert';


import 'package:http/http.dart';
import 'package:tourbiene/Modals/forget_password_model.dart';
import 'package:tourbiene/Modals/login_modal.dart';
import 'package:tourbiene/Modals/signup_model.dart';

class ApiService {

  //SignInUser
  Future<Map<String, dynamic>> signInUser(SignInUserModel model) async {
    Response response = await post(
      Uri.parse("http://127.0.0.1:8000/user/login/"),
      body: jsonEncode(
        {'email': model.email!, 'password': model.password!},
      ),
      headers: {
        "content-type": 'application/json'
      },
    );
    Map<String, dynamic> data = jsonDecode(response.body);
    

  
     

    return data;
  }

// SignUpUser
  Future<Map<String, dynamic>> signUpUser(SignUpUserModel model) async {
    Response response = await post(
      Uri.parse("http://127.0.0.1:8000/user/register/"),
      body: jsonEncode(
        {
          'email': model.username!,
          'password': model.password!,
          'first_name': model.first_name!,
          'last_name': model.last_name!,
          'shop_name': model.shopName!,
          'shop_url': model.shopUrl!,
          'company_name': model.companyName!,
          'company_id': model.companyId!,
          'tax_number': model.taxNumber!,
          'phone_number': model.phoneNumber!,
          'bank_number': model.bankName!,
          'bank_iban': model.bankIBAN!,
        },
      ),
      headers: {
        "content-Type": 'application/json'
      },
    );
    Map<String, dynamic> data = jsonDecode(response.body);
    print(("@@@@@@@@@@@@@@@@@@@@@@"));
   print(response.body);

    return data;
  }

  //forgetPassword
   Future<Map<String, dynamic>> forgetPassword(ForgetPasswprdModel model) async {
    Response response = await post(
      Uri.parse("http://127.0.0.1:8000/user/password/"),
      body: jsonEncode(
        {'old_password': model.old_password!, 'password': model.password!},
      ),
      headers: {
        "content-type": 'application/json'
      },
    );
    Map<String, dynamic> data = jsonDecode(response.body);
    

  
     

    return data;
  }

}
