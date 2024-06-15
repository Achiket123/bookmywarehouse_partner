import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;

    return Scaffold(
      backgroundColor: AppColor.backgroundColorOne,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.6,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: AppColor.backgroundColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
