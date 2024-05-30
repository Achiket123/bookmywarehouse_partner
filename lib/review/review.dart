import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/review/reviewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColorOne,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColorOne,
        title: Text(
          'Customers Reviews',
          style: GoogleFonts.inter(textStyle: Styles.textStyleNine),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: width * 0.05,
            vertical: height * 0.02,
          ),
          decoration: BoxDecoration(
            color: AppColor.backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              const Reviewer(),
              ReadMorePage(),
              const Reviewer(),
              ReadMorePage(),
              const Reviewer(),
              ReadMorePage(),
              const Reviewer(),
              ReadMorePage(),
              const Reviewer(),
              ReadMorePage(),
              const Reviewer(),
              ReadMorePage(),
            ],
          ),
        ),
      ),
    );
  }
}
