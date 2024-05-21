import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Dividers extends StatelessWidget {
  const Dividers({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: Get.width * 0.25,
          child: Divider(
            thickness: 1.5,
            color: AppColor.fontGrey,
          ),
        ),
        Text(
          text,
          style: Styles.textStyleFour,
        ),
        SizedBox(
          width: Get.width * 0.25,
          child: Divider(
            thickness: 1.5,
            color: AppColor.fontGrey,
          ),
        ),
      ],
    );
  }
}
