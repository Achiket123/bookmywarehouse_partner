import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SubmitButton extends StatelessWidget {
  SubmitButton({
    super.key,
    required this.btnText,
    required this.callback,
  });
  final String btnText;
  VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.9,
      child: TextButton(
        style: Styles.buttonStyle,
        onPressed: callback,
        child: Text(
          btnText,
          style: Styles.btnStyle,
        ),
      ),
    );
  }
}
