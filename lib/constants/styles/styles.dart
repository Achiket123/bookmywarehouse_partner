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
    backgroundColor: WidgetStatePropertyAll(AppColor.primaryColor),
    padding: const WidgetStatePropertyAll(
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
  static TextStyle textStyleFour = GoogleFonts.inter(
      textStyle: TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColor.fontGrey,
  ));
  static TextStyle textStyleFive = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColor.fontBlack,
  );
  static TextStyle textStyleSix = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColor.primaryColor,
  );
  static TextStyle textStyleSeven = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: AppColor.fontBlack,
  );
  static TextStyle textStyleEight = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColor.primaryColor,
  );
  static TextStyle textStyleNine = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColor.fontBlack,
  );
  static TextStyle textStyleTen = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColor.fontBlack,
  );
  static TextStyle textStyleEleven = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColor.fontBlack,
  );
  static TextStyle textStyleTwelve = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColor.primaryColor,
  );
  static TextStyle textStyleThirteen = GoogleFonts.inter(
      textStyle: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColor.textRed,
  ));
  static TextStyle textStyleFourteen = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColor.fontBlack,
  );
  static TextStyle textStyleFifteen = GoogleFonts.inter(
      textStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.underline,
    decorationColor: AppColor.primaryColor,
    color: AppColor.primaryColor,
  ));
  static TextStyle textStyleSixteen = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColor.colorBlue,
  );
}
