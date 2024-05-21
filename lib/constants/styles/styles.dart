import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static TextStyle primaryStyle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: AppColor.backgroundColor,
  );
  static TextStyle textStyleOne = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: AppColor.fontBlack,
  );
  static TextStyle textStyleTwo = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColor.fontGrey,
  );
  static TextStyle textStyleThree = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColor.fontBlack,
  );
  static ButtonStyle buttonStyle = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(AppColor.primaryColor),
    padding: MaterialStatePropertyAll(
      EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
    ),
  );
  static TextStyle btnStyle = GoogleFonts.inter(
      textStyle: TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: AppColor.backgroundColor,
  ));
}
