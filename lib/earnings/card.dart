import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EarningsCard extends StatelessWidget {
  const EarningsCard({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Container(
      width: width * 0.9,
      height: height * 0.12,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppColor.cardBackground,
        ),
        color: AppColor.cardBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '₹ 1000',
                style: GoogleFonts.inter(
                  textStyle: Styles.textStyleEight,
                ),
              ),
              Text(
                "Today’s Earnings",
                style: GoogleFonts.inter(
                  textStyle: Styles.textStyleTen,
                ),
              ),
            ],
          ),
          VerticalDivider(
            indent: height * 0.02,
            endIndent: height * 0.02,
            thickness: 1.5,
            color: Color(0xFFE0E0E0),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '₹ 5000',
                style: GoogleFonts.inter(
                  textStyle: Styles.textStyleEight,
                ),
              ),
              Text(
                "Total Withdrawal",
                style: GoogleFonts.inter(
                  textStyle: Styles.textStyleTen,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
