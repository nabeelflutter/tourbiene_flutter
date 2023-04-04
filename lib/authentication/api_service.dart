import 'dart:convert';


import 'package:http/http.dart';
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
     print("####################################################");
 
   
        print(response.body);
     

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
          'displayName': model.first_name!,
          'lastName': model.last_name!,
          'shopName': model.shopName!,
          'shopUrl': model.shopUrl!,
          'companyName': model.companyName!,
          'companyId': model.companyId!,
          'taxNumber': model.taxNumber!,
          'phoneNumber': model.phoneNumber!,
          'bankName': model.bankName!,
          'bankIBAN': model.bankIBAN!,
        },
      ),
      headers: {
        "content-Type": 'application/json'
      },
    );
    Map<String, dynamic> data = jsonDecode(response.body);
     print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
     print(response.body);

    return data;
  }

}
