import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LabelText extends StatelessWidget {
  const LabelText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(textStyle: Styles.textStyleThree),
    );
  }
}
