import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.icon,
    required this.text,
    required this.width,
    required this.controller,
  });
  final Icon icon;
  final String text;
  final double width;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    return Container(
      height: height * 0.06,
      width: width,
      color: AppColor.textfieldBackground,
      child: TextFormField(
        controller: controller,
        cursorHeight: 20,
        decoration: InputDecoration(
            prefixIcon: icon,
            hintText: text,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
