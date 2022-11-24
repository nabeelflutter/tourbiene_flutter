import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourbiene/controller/signin_controller.dart';
import 'package:tourbiene/controller/signup_controller.dart';
import 'package:tourbiene/widgets/already_haveaccount.dart';
import 'package:tourbiene/widgets/simple_btn.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController shopNameController = TextEditingController();
  final TextEditingController shopUrlController = TextEditingController();
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController companyIdController = TextEditingController();
  final TextEditingController taxNumberController = TextEditingController();
  final TextEditingController bankNameController = TextEditingController();
  final TextEditingController bankIbanController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  final GlobalKey<FormFieldState> emailGlobalKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> lastNameGlobalKey =
      GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> phoneNumberGlobalKey =
      GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> shopNameGlobalKey =
      GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> shopIdGlobalKey = GlobalKey<FormFieldState>();

  final GlobalKey<FormFieldState> passwordGlobalKey =
      GlobalKey<FormFieldState>();

  final GlobalKey<FormFieldState> nameGlobalKey = GlobalKey<FormFieldState>();

  int _value = 0;
  bool isChack = false;

  final List list = ['I am a customer', 'I am a vendor'];

  late bool _obscured;

  void _textObscured() {
    setState(() {
      _obscured = !_obscured;
    });
  }

  @override
  void initState() {
    _obscured = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height - 85;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: globalKey,
            child: Column(
              children: [
                SizedBox(
                  height: height * .02,
                ),
                SizedBox(
                  height: height * .06,
                  child: const Align(
                    alignment: Alignment(-.9, -1),
                    child: Text(
                      "Register",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .32,
                  width: width,
                  child: const Image(
                      fit: BoxFit.fill, image: AssetImage('assets/signup.gif')),
                ),
                SizedBox(
                  height: height * .01,
                ),
                //Input field user name
                SizedBox(
                  height: height * .10,
                  width: width,
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    key: nameGlobalKey,
                    validator: isValidName,
                    onChanged: (value) {
                      nameGlobalKey.currentState!.validate();
                    },
                    controller: nameController,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(FontAwesomeIcons.userTie),
                      label: const Text('User Name'),
                      hintText: 'please enter name',
                      labelStyle:
                          const TextStyle(color: Colors.black, fontSize: 16),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .01,
                ),
                //Input Field Email
                SizedBox(
                  height: height * .10,
                  width: width,
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    key: emailGlobalKey,
                    validator: isValidEmail,
                    controller: emailController,
                    onChanged: (val) {
                      emailGlobalKey.currentState!.validate();
                    },
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(FontAwesomeIcons.envelope),
                      label: const Text('Email Address'),
                      hintText: 'please enter email',
                      labelStyle:
                          const TextStyle(color: Colors.black, fontSize: 16),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .01,
                ),
                //Input field Password
                SizedBox(
                  height: height * .10,
                  width: width,
                  child: TextFormField(
                    obscuringCharacter: '*',
                    obscureText: _obscured,
                    keyboardType: TextInputType.visiblePassword,
                    key: passwordGlobalKey,
                    validator: isValidPassword,
                    controller: passwordController,
                    onChanged: (value) {
                      passwordGlobalKey.currentState!.validate();
                    },
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(FontAwesomeIcons.lock),
                      suffixIcon: GestureDetector(
                        onTap: _textObscured,
                        child: Icon(
                          _obscured
                              ? Icons.visibility_off_rounded
                              : Icons.visibility_rounded,
                        ),
                      ),
                      label: const Text('User Password'),
                      hintText: 'please enter password',
                      labelStyle:
                          const TextStyle(color: Colors.black, fontSize: 16),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),

                isChack == true
                    ? Column(
                        children: [
                          SizedBox(
                            height: height * .10,
                            width: width,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              key: lastNameGlobalKey,
                              validator: isValidLastName,
                              controller: lastNameController,
                              onChanged: (val) {
                                lastNameGlobalKey.currentState!.validate();
                              },
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                prefixIcon:
                                    const Icon(FontAwesomeIcons.userTie),
                                label: const Text('Last Name'),
                                hintText: 'please enter user last name',
                                labelStyle: const TextStyle(
                                    color: Colors.black, fontSize: 16),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          SizedBox(
                            height: height * .10,
                            width: width,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              key: shopNameGlobalKey,

                              // validator: isValidEmail,
                              controller: shopNameController,
                              validator: isValidShopName,
                              onChanged: (val) {
                                shopNameGlobalKey.currentState!.validate();
                              },
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(FontAwesomeIcons.shop),
                                label: const Text('shop Name'),
                                hintText: 'please enter shopname',
                                labelStyle: const TextStyle(
                                    color: Colors.black, fontSize: 16),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          SizedBox(
                            height: height * .11,
                            width: width,
                            child: TextFormField(
                              key: shopIdGlobalKey,
                              keyboardType: TextInputType.name,
                              onChanged: (value) {
                                shopIdGlobalKey.currentState!.validate();
                              },
                              controller: shopNameController,
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                helperText:
                                    'https://tourbiene.com/store/${shopNameController.value.text.toString()}',
                                prefixIcon: const Icon(FontAwesomeIcons.shop),
                                label: const Text('Shop URL'),
                                labelStyle: const TextStyle(
                                    color: Colors.black, fontSize: 16),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          SizedBox(
                            height: height * .10,
                            width: width,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              controller: companyNameController,
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                    FontAwesomeIcons.buildingCircleCheck),
                                label: const Text('Company Name'),
                                hintText: 'please enter companyName',
                                labelStyle: const TextStyle(
                                    color: Colors.black, fontSize: 16),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          SizedBox(
                            height: height * .10,
                            width: width,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              controller: companyIdController,
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                    FontAwesomeIcons.buildingCircleCheck),
                                label: const Text('Company ID'),
                                hintText: 'please enter companyId',
                                labelStyle: const TextStyle(
                                    color: Colors.black, fontSize: 16),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          SizedBox(
                            height: height * .10,
                            width: width,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              controller: taxNumberController,
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                prefixIcon:
                                    const Icon(FontAwesomeIcons.textHeight),
                                label: const Text('TAX Number'),
                                hintText: 'please enter tax number ',
                                labelStyle: const TextStyle(
                                    color: Colors.black, fontSize: 16),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          SizedBox(
                            height: height * .10,
                            width: width,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              controller: bankNameController,
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                    FontAwesomeIcons.buildingColumns),
                                label: const Text('Bank Name'),
                                hintText: 'please enter bankName',
                                labelStyle: const TextStyle(
                                    color: Colors.black, fontSize: 16),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          SizedBox(
                            height: height * .10,
                            width: width,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              controller: bankIbanController,
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                    FontAwesomeIcons.buildingColumns),
                                label: const Text('Bank IBAN'),
                                hintText: 'please enter bank Iban',
                                labelStyle: const TextStyle(
                                    color: Colors.black, fontSize: 16),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                          SizedBox(
                            height: height * .10,
                            width: width,
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              controller: phoneNumberController,
                              validator: isValidPhoneNumber,
                              key: phoneNumberGlobalKey,
                              onChanged: (value) {
                                phoneNumberGlobalKey.currentState!.validate();
                              },
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(FontAwesomeIcons.phone),
                                label: const Text('PhoneNumber'),
                                hintText: 'please enter PhoneNumber',
                                labelStyle: const TextStyle(
                                    color: Colors.black, fontSize: 16),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * .01,
                          ),
                        ],
                      )
                    : const SizedBox(),
                for (int i = 0; i <= 1; i++)
                  ListTile(
                    title: Text(list[i],
                        style: Theme.of(context).textTheme.subtitle1),
                    leading: Radio(
                      value: i,
                      groupValue: _value,
                      onChanged: i == 2
                          ? null
                          : (dynamic value) {
                              setState(() {
                                _value = value;
                                isChack = !isChack;
                              });
                            },
                    ),
                  ),
                SizedBox(
                    height: height * .10,
                    width: width,
                    child: const Text(
                        'Your personal data will be used to support your experience throughout this app, to manage access to your account, and for other purposes described in our privacy policy.')),
                SizedBox(height: height * .01),
                SignupButton(
                  signupBtnClick: btnSignupClick,
                  nameController: nameController,
                  passwordController: passwordController,
                  emailController: emailController,
                  nameValidationKey: nameGlobalKey,
                  emailValidationKey: emailGlobalKey,
                  passwordValidationKey: passwordGlobalKey,
                  lastNameController: lastNameController,
                  shopNameController: shopNameController,
                  shopUrlController: shopUrlController,
                  companyNameController: companyNameController,
                  companyIdController: companyIdController,
                  taxNumberController: taxNumberController,
                  bankNameController: bankNameController,
                  bankIbanController: bankIbanController,
                  phoneNumberController: phoneNumberController,
                  lastNameValidationKey: lastNameGlobalKey,
                  shopNameValidationKey: shopIdGlobalKey,
                  phoneNumberValidationKey: phoneNumberGlobalKey,
                  width: width,
                  height: height * .07,
                  globalKey: globalKey,
                ),
                SizedBox(
                  height: height * .03,
                ),
                //Google Sign up Buitton

                HaveAccount(
                  firstMsg: 'Already have acount ?',
                  secondMsg: 'Sign in',
                  textClick: signinClick,
                  width: width,
                  height: height * .03,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
