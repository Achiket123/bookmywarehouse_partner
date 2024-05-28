import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/homepage/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Future.delayed(
    //   Duration(seconds: 2),
    //   () {
    //     Get.to(HomePage());
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    var width = Get.width;
    var height = Get.height;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
            vertical: height * 0.3,
          ),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/icons/mdi_tick-decagram.svg',
                height: height * 0.2,
                width: height * 0.2,
              ),
              Center(
                child: Text(
                  'Your details are sent for',
                  style: GoogleFonts.inter(
                    textStyle: Styles.textStyleEleven,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Verification',
                  style: GoogleFonts.inter(
                    textStyle: Styles.textStyleEleven,
                  ),
                ),
              ),
              Center(
                child: Text('You’ll be notified once verification is complete',
                    style: GoogleFonts.inter(
                      textStyle: Styles.textStyleTwelve,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
