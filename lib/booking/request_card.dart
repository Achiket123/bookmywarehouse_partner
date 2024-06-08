import 'package:bookmywarehouse_partner/booking/subscrioptions_details.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    String currentTime = DateFormat('HH:mm').format(DateTime.now());
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
              Text(
                currentTime,
                style: GoogleFonts.inter(
                  textStyle: Styles.textStyleTen,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Booking Type',
                style: GoogleFonts.inter(textStyle: Styles.textStyleThree),
              ),
              Text(
                'Warehouse Service',
                style: GoogleFonts.inter(
                  textStyle: Styles.textStyleTen,
                ),
              ),
            ],
          ),
          const Divider(height: 20, thickness: 1),
          const Text(
            'Warehouse Details',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Store Details',
                style: GoogleFonts.inter(textStyle: Styles.textStyleTen),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(SubscrioptionsDetails());
                  print('store details ');
                },
                child: Text(
                  'View',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'No of People',
                style: GoogleFonts.inter(
                  textStyle: Styles.textStyleTen,
                ),
              ),
              const Text('3'),
            ],
          ),
          const Divider(height: 20, thickness: 1),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  'Address',
                  style: GoogleFonts.inter(textStyle: Styles.textStyleThree),
                ),
              ),
              SizedBox(
                width: 150,
                child: Text(
                  '123, XYZ Apt. New Delhi, Delhi, 123456',
                  style: GoogleFonts.inter(
                    textStyle: Styles.textStyleTen,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          const Divider(height: 20, thickness: 1),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.red),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Reject',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: SizedBox(
                  width: 150,
                  child: Center(
                    child: Text(
                      'Accept',
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
            ],
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
