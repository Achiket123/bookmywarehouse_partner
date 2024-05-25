import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCheckBox extends StatefulWidget {
  CustomCheckBox({
    super.key,
    required this.text,
    required this.width,
    required this.isCheck,
  });
  final double width;
  final String text;
  bool? isCheck = false;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: Get.height * 0.06,
      decoration: BoxDecoration(
        color: AppColor.textfieldBackground,
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Checkbox(
            value: widget.isCheck,
            activeColor: AppColor.primaryColor,
            onChanged: (value) {
              setState(() {
                widget.isCheck = value;
              });
            },
          ),
          Text(
            widget.text,
            style: Styles.textStyleTen,
          ),
        ],
      ),
    );
  }
}
