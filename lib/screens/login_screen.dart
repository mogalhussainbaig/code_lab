

import 'package:code_land/screens/common_ui_elements.dart';
import 'package:code_land/screens/image_screen.dart';
import 'package:code_land/utils/colors.dart';
import 'package:code_land/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              loginLogoImage,
              width: size.width / 2.2,
              height: size.height / 2.8,
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 15, bottom: 10, left: 20, right: 20),
              child: TextFormField(
                controller: userNameController,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please Enter UserName';
                  }
                  return null;
                },
                style: const TextStyle(
                  fontFamily: POP_FAMILY,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: grey_color,
                ),
                decoration: const InputDecoration(
                    hintText: USER_NAME_TEXT,
                    hintStyle: TextStyle(
                      fontFamily: POP_FAMILY,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: grey_color,
                    ),
                    enabledBorder: enabledOutlineBorder,
                    errorBorder: errorOutlineBorder,
                    border: enabledOutlineBorder),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 15, bottom: 10, left: 20, right: 20),
              child: TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please Enter Password';
                  }
                  return null;
                },
                style: const TextStyle(
                  fontFamily: POP_FAMILY,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: grey_color,
                ),
                decoration: const InputDecoration(
                    hintText: PASSWORD_TEXT,
                    hintStyle: TextStyle(
                      fontFamily: POP_FAMILY,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: grey_color,
                    ),
                    enabledBorder: enabledOutlineBorder,
                    errorBorder: errorOutlineBorder,
                    border: enabledOutlineBorder),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 14, right: 14, top: 15, bottom: 15),
              child: GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ImageScreen()),
                          (route) => false);
                    }
                  },
                  child: Image.asset(loginButtonImage)),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(bottom: 10, top: 20, left: 0),
                      child: const Text(
                        LOGIN_DETAILS_TEXT,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: POP_FAMILY,
                            fontSize: 12),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const Text.rich(
                        TextSpan(
                          text: 'English, Kannada & Telugu  :  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: POP_FAMILY,
                              fontSize: 12),
                          children: <TextSpan>[
                            TextSpan(
                              text: '7406333800',
                              style: TextStyle(
                                  color: orange_text_color,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  fontFamily: POP_FAMILY,
                                  decorationColor: orange_text_color,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const Text.rich(
                        TextSpan(
                          text: 'English, Kannada & Hindi     :  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: POP_FAMILY,
                              fontSize: 12),
                          children: <TextSpan>[
                            TextSpan(
                              text: '9071386515',
                              style: TextStyle(
                                  color: orange_text_color,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  decorationColor: orange_text_color,
                                  fontFamily: POP_FAMILY,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 25, top: 25),
                  child: const Text(
                    INFO_SOLUTIONS_PVT_LTD,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontFamily: POP_FAMILY,
                        fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
