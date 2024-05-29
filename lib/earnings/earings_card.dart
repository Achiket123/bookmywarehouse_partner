import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EarningsCardOne extends StatefulWidget {
  const EarningsCardOne({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1, text2;
  @override
  State<EarningsCardOne> createState() => _EarningsCardOneState();
}

class _EarningsCardOneState extends State<EarningsCardOne> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Container(
      height: height * 0.15,
      width: width * 0.4,
      padding: EdgeInsets.all(width * 0.03),
      decoration: BoxDecoration(
        color: AppColor.cardBackground,
        borderRadius: BorderRadius.circular(10),
        border: const Border(
          left: BorderSide(
            width: 5,
            color: Color(0xFF47A374),
          ),
          right: BorderSide(
            width: 1,
            color: Color(0xFF47A374),
          ),
          bottom: BorderSide(
            width: 1,
            color: Color(0xFF47A374),
          ),
          top: BorderSide(
            width: 1,
            color: Color(0xFF47A374),
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.text1,
            style: GoogleFonts.inter(
              textStyle: Styles.textStyleNine,
            ),
          ),
          Text(
            widget.text2,
            style: GoogleFonts.inter(
              textStyle: Styles.textStyleTen,
            ),
          ),
        ],
      ),
    );
  }
}
