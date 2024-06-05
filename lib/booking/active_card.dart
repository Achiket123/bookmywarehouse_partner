import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ActiveCard extends StatelessWidget {
  const ActiveCard({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;

    return Container(
      height: height * 0.4,
      width: width * .9,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'ID: 132345',
                style: GoogleFonts.inter(textStyle: Styles.textStyleEleven),
              )
            ],
          )
        ],
      ),
    );
  }
}
