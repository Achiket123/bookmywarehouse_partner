import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSevervicesController extends GetxController {
  final userName = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;
  final businesName = TextEditingController().obs;
  final addressLine1 = TextEditingController().obs;
  final addressLine2 = TextEditingController().obs;
  final city = TextEditingController().obs;
  final state = TextEditingController().obs;
  final pinCode = TextEditingController().obs;

  var emailError = ''.obs;
  var passwordError = ''.obs;
  var confirmPasswordError = ''.obs;
  var nameError = ''.obs;
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

  bool signupPasswordValidate(
      String password, String confirmPassword, String name) {
    if (password.isEmpty && confirmPassword.isEmpty && name.isEmpty) {
      passwordError.value = 'password could not be empty';
      confirmPasswordError.value = 'confirm your password';
      nameError.value = 'Please enter your name';

      return false;
    }
    if (password.isNotEmpty && confirmPassword.isNotEmpty && name.isEmpty) {
      passwordError.value = '';
      confirmPasswordError.value = '';
      nameError.value = 'Please enter your name';
      return false;
    } else if (password.isNotEmpty &&
        name.isNotEmpty &&
        confirmPassword.isEmpty) {
      passwordError.value = '';
      confirmPasswordError.value = 'confirm your password';
      nameError.value = '';
      return false;
    } else if (confirmPassword.isNotEmpty &&
        name.isNotEmpty &&
        password.isEmpty) {
      passwordError.value = 'password could not be empty';
      confirmPasswordError.value = '';
      nameError.value = '';
      return false;
    } else if (confirmPassword.isEmpty && password.isEmpty && name.isNotEmpty) {
      passwordError.value = 'password could not be empty';
      confirmPasswordError.value = 'confirm your password';
      nameError.value = '';
      return false;
    } else if (name.isEmpty && password.isEmpty && confirmPassword.isNotEmpty) {
      passwordError.value = 'password could not be empty';
      confirmPasswordError.value = '';
      nameError.value = 'Please enter your name';
      return false;
    } else if (name.isEmpty && confirmPassword.isEmpty && password.isNotEmpty) {
      passwordError.value = '';
      confirmPasswordError.value = 'confirm your password';
      nameError.value = 'Please enter your name';
      return false;
    }
    if (password.length >= 6 && confirmPassword.length >= 6) {
      if (password == confirmPassword) {
        passwordError.value = '';
        confirmPasswordError.value = '';
        return true;
      } else {
        confirmPasswordError.value = 'Password does not match';
        return false;
      }
    } else {
      // passwordError.value = 'Password length should be at least 6 digits';
      confirmPasswordError.value = 'Password does not match';
      return false;
    }
  }

  bool validateSignupForm() {
    final emailValid = validateEmail(emailController.value.text);
    final passwordValid = signupPasswordValidate(
      passwordController.value.text,
      confirmPasswordController.value.text,
      userName.value.text,
    );
    return emailValid && passwordValid;
  }
}
