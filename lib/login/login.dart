import 'package:bookmywarehouse_partner/common/button.dart';
import 'package:bookmywarehouse_partner/login/custom_email_field.dart';
import 'package:bookmywarehouse_partner/common/label_text.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/getx/getx_services.dart';
import 'package:bookmywarehouse_partner/common/text_common.dart';
import 'package:bookmywarehouse_partner/login/custom_password_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AppSevervicesController servicesController = Get.find();

  @override
  Widget build(BuildContext context) {
    var width = Get.width;
    var height = Get.height;

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.2),
                child: const CommonText(
                  text1: 'Login',
                  text2: 'Hi! Welcome back, nice to see you',
                ),
              ),
              SizedBox(height: height * 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LabelText(text: 'Email'),
                  SizedBox(height: height * 0.005),
                  const CustomEmailField(),
                  SizedBox(height: height * 0.025),
                  const LabelText(text: 'Password'),
                  SizedBox(height: height * 0.005),
                  const CustomPasswordField(),
                ],
              ),
              // SizedBox(height: height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('forgot password press');
                    },
                    child: Text(
                      'Forgot Password',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColor.textRed,
                          color: AppColor.textRed,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.05),
              SubmitButton(
                btnText: 'Sign In',
                callback: () {
                  if (servicesController.validateForm()) {
                    // Perform login action
                    print('Login successful');
                  } else {
                    print('Validation failed');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
