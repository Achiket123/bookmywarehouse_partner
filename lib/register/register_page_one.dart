import 'package:bookmywarehouse_partner/common/custom_appbar.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/register/manual_carousal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        title: Padding(
            padding: EdgeInsets.only(left: Get.width * 0.2),
            child: Text(
              'Register',
              style: Styles.textStyleNine,
            )),
        automaticallyImplyLeading: false,
        leading: CustomAppBar(),
      ),
      body: ManuallyControlledSlider(),
    );
  }
}
