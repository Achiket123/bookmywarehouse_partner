import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/review/review.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewSections extends StatelessWidget {
  const ReviewSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Get.to(ReviewPage());
            print('review page');
          },
          child: Text(
            'Click Here',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 14,
                color: AppColor.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor: AppColor.primaryColor,
              ),
            ),
          ),
        ),
        Text(
          ' To View Customer Reviews',
          style: GoogleFonts.inter(
            textStyle: Styles.textStyleTen,
          ),
        ),
      ],
    );
  }
}
