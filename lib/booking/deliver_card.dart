import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = Get.width;
    // var height = Get.height;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ID : 12333',
                style: GoogleFonts.inter(textStyle: Styles.textStyleThree),
              ),
              InkWell(
                onTap: () {
                  print('view details');
                },
                child: Text(
                  'View Details',
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColor.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                  text: 'Warehouse Service ',
                  style: GoogleFonts.inter(textStyle: Styles.textStyleThree),
                ),
                TextSpan(
                  text: '(19/30 Days) ',
                  style: GoogleFonts.inter(
                    textStyle: Styles.textStyleTwelve,
                  ),
                ),
                const WidgetSpan(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Next Lunch 04/11/2023',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 20, thickness: 1),
          Text(
            'Next Customer Details',
            style: GoogleFonts.inter(textStyle: Styles.textStyleThree),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'No of People',
                style: GoogleFonts.inter(textStyle: Styles.textStyleThree),
              ),
              Text(
                '100',
                style: GoogleFonts.inter(textStyle: Styles.textStyleThree),
              ),
            ],
          ),
          const Divider(height: 20, thickness: 1),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Address',
                style: GoogleFonts.inter(textStyle: Styles.textStyleThree),
              ),
              SizedBox(
                width: width * 0.45,
                child: Text(
                  '123, XYZ Apt. New Delhi, Delhi, 123456',
                  style: GoogleFonts.inter(textStyle: Styles.textStyleThree),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Center(
            child: SizedBox(
              width: width * 0.7,
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.1,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                icon: Icon(
                  Icons.chat_bubble_outline,
                  color: AppColor.backgroundColor,
                ),
                label: Text(
                  'Chat with Customer',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                    fontSize: 14,
                    color: AppColor.backgroundColor,
                    fontWeight: FontWeight.w600,
                  )),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Divider(
            height: 20,
            thickness: 1,
            color: AppColor.fontBlack,
          ),
        ],
      ),
    );
  }
}
