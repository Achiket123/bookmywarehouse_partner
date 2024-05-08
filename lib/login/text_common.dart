import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonText extends StatelessWidget {
  const CommonText({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: GoogleFonts.inter(textStyle: Styles.textStyleOne),
        ),
        Text(
          text2,
          style: GoogleFonts.inter(textStyle: Styles.textStyleTwo),
        ),
      ],
    );
  }
}
