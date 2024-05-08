import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/getx/getx_services.dart';
import 'package:bookmywarehouse_partner/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(LoginPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    Get.put(AppSevervicesController());
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: const BodyText(),
    );
  }
}

class BodyText extends StatelessWidget {
  const BodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.house_outlined,
            color: AppColor.backgroundColor,
            size: 150,
          ),
          Text(
            'Book My Warehouse',
            style: GoogleFonts.inter(textStyle: Styles.primaryStyle),
          ),
          Text(
            'Partner',
            style: GoogleFonts.inter(textStyle: Styles.primaryStyle),
          ),
        ],
      ),
    );
  }
}
