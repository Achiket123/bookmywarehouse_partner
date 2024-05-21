import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSevervicesController extends GetxController {
  final userName = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  var emailError = ''.obs;
  var passwordError = ''.obs;

  bool validateEmail(String email) {
    if (email.isEmpty) {
      emailError.value = 'Email should not be empty';
      return false;
    }
    if (email.contains('@') && email.contains('.')) {
      emailError.value = '';
      return true;
    } else {
      emailError.value = 'Enter a valid email';
      return false;
    }
  }

  bool validatePassword(String password) {
    if (password.isEmpty) {
      passwordError.value = 'Password could not be empty';
      return false;
    }
    if (password.length >= 6) {
      passwordError.value = '';
      return true;
    } else {
      passwordError.value = 'Password length should be at least 6 digits';
      return false;
    }
  }

  bool validateForm() {
    final emailValid = validateEmail(emailController.value.text);
    final passwordValid = validatePassword(passwordController.value.text);
    return emailValid && passwordValid;
  }
}
