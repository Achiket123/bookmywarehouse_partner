import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/getx/getx_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomEmailField extends StatefulWidget {
  const CustomEmailField({super.key});

  @override
  State<CustomEmailField> createState() => _CustomEmailFieldState();
}

class _CustomEmailFieldState extends State<CustomEmailField> {
  AppSevervicesController servicesController = Get.find();

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
          child: Obx(() => TextFormField(
                controller: servicesController.emailController.value,
                keyboardType: TextInputType.emailAddress,
                cursorHeight: 25,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: width * 0.05,
                    vertical: 5,
                  ),
                  hintText: 'example@gmail.com',
                  hintStyle: const TextStyle(fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
        ),
        Obx(() => Text(
              servicesController.emailError.value,
              style: TextStyle(color: Colors.red),
            )),
      ],
    );
  }
}
