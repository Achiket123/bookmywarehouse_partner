import 'package:bookmywarehouse_partner/common/button.dart';
import 'package:bookmywarehouse_partner/common/label_text.dart';
import 'package:bookmywarehouse_partner/common/text_common.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/getx/getx_services.dart';
import 'package:bookmywarehouse_partner/login/custom_email_field.dart';
import 'package:bookmywarehouse_partner/login/custom_password_field.dart';
import 'package:bookmywarehouse_partner/login/divider.dart';
import 'package:bookmywarehouse_partner/login/login.dart';
import 'package:bookmywarehouse_partner/login/login_options.dart';
import 'package:bookmywarehouse_partner/login/options.dart';
import 'package:bookmywarehouse_partner/signup/confirm_password.dart';
import 'package:bookmywarehouse_partner/signup/custom_name_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  AppSevervicesController servicesController = Get.find();
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.1,
                ),
                child: const Center(
                  child: CommonText(
                    text1: 'Sign Up',
                    text2: 'Create Your Account',
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LabelText(text: 'Name'),
                  SizedBox(height: height * 0.005),
                  CustomNameField(),
                  LabelText(text: 'Email'),
                  SizedBox(height: height * 0.005),
                  CustomEmailField(),
                  LabelText(text: 'Password'),
                  SizedBox(height: height * 0.005),
                  CustomPasswordField(),
                  LabelText(text: 'Confirm Password'),
                  SizedBox(height: height * 0.005),
                  ConfirmPasswordField(),
                  SizedBox(height: height * 0.05),
                  SubmitButton(
                    btnText: 'Sign Up',
                    callback: () {
                      if (servicesController.validateSignupForm()) {
                        // Perform login action
                        print('sign up successful');
                      } else {
                        print('Validation failed');
                      }
                    },
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  const Dividers(
                    text: 'or sign up with',
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  const LoginOptions(),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Options(
                    text1: 'Already have an account?',
                    text2: 'Sign In',
                    callback: () {
                      Get.off(LoginPage());
                    },
                  ),
                  SizedBox(
                    height: height * 0.05,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
