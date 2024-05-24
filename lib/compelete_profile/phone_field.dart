import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomPhoneField extends StatelessWidget {
  const CustomPhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    return Container(
      color: AppColor.textfieldBackground,
      height: height * 0.06,
      child: IntlPhoneField(
        decoration: InputDecoration(
          counter: null,
          labelText: '9874563210',
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
        ),
        initialCountryCode: 'IN',
        onChanged: (phone) {
          print(phone.completeNumber);
        },
        disableLengthCheck: true,
      ),
    );
  }
}
