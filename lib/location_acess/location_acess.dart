import 'package:bookmywarehouse_partner/common/button.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationAcess extends StatefulWidget {
  const LocationAcess({super.key});

  @override
  State<LocationAcess> createState() => _LocationAcessState();
}

class _LocationAcessState extends State<LocationAcess> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.15),
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        height: height * 0.2,
                        width: height * 0.2,
                        decoration: BoxDecoration(
                          color: AppColor.textfieldBackground,
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                      ),
                      Positioned(
                        top: height * 0.05,
                        left: width * 0.1,
                        child: Icon(
                          Icons.location_on,
                          color: AppColor.primaryColor,
                          size: height * 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'What is Your Location?',
                style: GoogleFonts.inter(textStyle: Styles.textStyleSeven),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'We need to know your location in order to suggest nearby  services.',
                style: Styles.textStyleFour,
              ),
              SizedBox(
                height: height * 0.04,
              ),
              SubmitButton(
                btnText: 'Allow Location Access',
                callback: () {},
              ),
              SizedBox(
                height: height * 0.04,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Enter Location Manually',
                  style: GoogleFonts.inter(
                    textStyle: Styles.textStyleEight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
