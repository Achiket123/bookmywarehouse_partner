import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Options extends StatelessWidget {
  const Options({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    var width = Get.width;
    return Container(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: Styles.textStyleFive,
          ),
          InkWell(
            onTap: () {
              Get.to(const SignUpScreen());
              print('btn pressed');
            },
            child: Text(
              text2,
              style: Styles.textStyleSix,
            ),
          )
        ],
      ),
    );
  }
}
