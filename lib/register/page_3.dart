import 'package:bookmywarehouse_partner/common/label_text.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/register/custom_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
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
            vertical: height * 0.02,
          ),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Select services you offer',
                  style: Styles.textStyleTen,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05,
                  vertical: height * 0.02,
                ),
                height: height * 0.4,
                width: width * 0.8,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: AppColor.fontGrey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelText(text: 'Available Warehouse Service’s'),
                    CustomCheckBox(
                      text: 'Hello',
                      width: width * 0.3,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
