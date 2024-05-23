import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/getx/getx_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmPasswordField extends StatefulWidget {
  const ConfirmPasswordField({super.key});

  @override
  State<ConfirmPasswordField> createState() => _ConfirmPasswordFieldState();
}

class _ConfirmPasswordFieldState extends State<ConfirmPasswordField> {
  AppSevervicesController servicesController = Get.find();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: AppColor.textfieldBackground,
          height: height * 0.06,
          child: Obx(
            () => TextFormField(
              controller: servicesController.confirmPasswordController.value,
              cursorHeight: 25,
              obscureText: isObscure,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: width * 0.05,
                  vertical: 5,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: Icon(
                    isObscure ? Icons.visibility_off : Icons.visibility,
                    size: 25,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) {
                setState(
                  () {
                    servicesController.confirmPasswordError.value = " ";
                  },
                );
              },
            ),
          ),
        ),
        Obx(
          () => Text(
            servicesController.confirmPasswordError.value,
            style: const TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }
}
