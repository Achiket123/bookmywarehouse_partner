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
                height: height * 0.45,
                width: width * 0.9,
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
                    const LabelText(text: 'Available Warehouse Service’s'),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCheckBox(
                          isCheck: false,
                          text: 'Security',
                          width: width * 0.35,
                        ),
                        CustomCheckBox(
                          isCheck: false,
                          text: 'Furnished',
                          width: width * 0.35,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCheckBox(
                          isCheck: false,
                          text: 'Occasion',
                          width: width * 0.35,
                        ),
                        CustomCheckBox(
                          isCheck: false,
                          text: 'On Demand',
                          width: width * 0.35,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const LabelText(text: 'Add Ons'),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCheckBox(
                          isCheck: false,
                          text: 'Occasion',
                          width: width * 0.35,
                        ),
                        CustomCheckBox(
                          isCheck: false,
                          text: 'On Demand',
                          width: width * 0.35,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCheckBox(
                          isCheck: false,
                          text: 'Occasion',
                          width: width * 0.35,
                        ),
                        CustomCheckBox(
                          isCheck: false,
                          text: 'On Demand',
                          width: width * 0.35,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomCheckBox(
                text: 'Cleaning Services',
                width: width * 0.9,
                isCheck: false,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomCheckBox(
                text: 'Training Services',
                width: width * 0.9,
                isCheck: false,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomCheckBox(
                text: 'Photography Services',
                width: width * 0.9,
                isCheck: false,
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
