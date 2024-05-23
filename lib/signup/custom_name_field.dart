import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/getx/getx_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNameField extends StatefulWidget {
  const CustomNameField({super.key});

  @override
  State<CustomNameField> createState() => _CustomNameFieldState();
}

class _CustomNameFieldState extends State<CustomNameField> {
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
          child: Obx(
            () => TextFormField(
              controller: servicesController.userName.value,
              keyboardType: TextInputType.text,
              cursorHeight: 25,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: width * 0.05,
                  vertical: 5,
                ),
                hintText: 'Jhon Banerjee',
                hintStyle: const TextStyle(fontSize: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  servicesController.nameError.value = '';
                });
              },
            ),
          ),
        ),
        Obx(
          () => Text(
            servicesController.nameError.value,
            style: const TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }
}
