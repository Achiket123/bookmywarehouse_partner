import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscrioptionsDetails extends StatelessWidget {
  const SubscrioptionsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColorOne,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColorOne,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button action
            Get.back();
          },
        ),
        title: Text(
          'ID : 12349',
          style: GoogleFonts.inter(
            textStyle: Styles.textStyleEleven,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: width * 0.9,
                    height: height * 0.06,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 13.5,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.backgroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Warehouse Service',
                      style: GoogleFonts.lato(
                        textStyle: Styles.textStyleThree,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  buildWarehouseDetailsSection(),
                  const SizedBox(height: 12.0),
                  buildSubscriptionDetailsSection(),
                  const SizedBox(height: 12.0),
                  buildAddressSection(),
                  const SizedBox(height: 12.0),
                  buildContactDetailsSection(),
                  const SizedBox(height: 12.0),
                  buildPaymentDetailsSection(),
                ],
              ),
              const SizedBox(height: 24.0),
              buildHelpSection(),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildWarehouseDetailsSection() {
    var height = Get.height;
    var width = Get.width;
    return Container(
      width: width * 0.9,
      height: height * 0.15,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 13.5,
      ),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Warehouse Details',
            style: GoogleFonts.lato(
              textStyle: Styles.textStyleFourteen,
            ),
          ),
          const SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lunch-Cleaning',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleTen,
                ),
              ),
              Text(
                'Time : 12:00 PM - 03:00 PM',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleTen,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dinner-Off Work',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleTen,
                ),
              ),
              Text(
                'Time : 06:00 PM - 09:00 PM',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleTen,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSubscriptionDetailsSection() {
    var height = Get.height;
    var width = Get.width;
    return Container(
      width: width * 0.9,
      height: height * 0.2,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 13.5,
      ),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Subscription Details',
            style: GoogleFonts.lato(
              textStyle: Styles.textStyleFourteen,
            ),
          ),
          const SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Start Date',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleThree,
                ),
              ),
              Text(
                '08 Nov 2023',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleTen,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'No. of Days of Rent',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleThree,
                ),
              ),
              Text(
                '30 Days',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleTen,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'No. of People',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleThree,
                ),
              ),
              Text(
                '1',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleTen,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildAddressSection() {
    var height = Get.height;
    var width = Get.width;
    return Container(
      width: width * 0.9,
      height: height * 0.13,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 13.5,
      ),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delivery Address',
            style: GoogleFonts.lato(
              textStyle: Styles.textStyleFourteen,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'No. of Days 123, XYZ Apt., New Delhi, Delhi',
            style: GoogleFonts.lato(
              textStyle: Styles.textStyleTen,
            ),
          ),
          Text(
            'Pin - 123456',
            style: GoogleFonts.lato(
              textStyle: Styles.textStyleTen,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContactDetailsSection() {
    var height = Get.height;
    var width = Get.width;
    return Container(
      width: width * 0.9,
      height: height * 0.11,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 13.5,
      ),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Contact Details',
            style: GoogleFonts.lato(
              textStyle: Styles.textStyleFourteen,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '+91 1234567890',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleTen,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Call Customer',
                  style: GoogleFonts.lato(
                    textStyle: Styles.textStyleTwelve,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildPaymentDetailsSection() {
    var height = Get.height;
    var width = Get.width;
    return Container(
      width: width * 0.9,
      height: height * 0.23,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 13.5,
      ),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleTen,
                ),
              ),
              Text(
                ' XXX',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleTen,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'GST ',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleTen,
                ),
              ),
              Text(
                ' XXX',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleTen,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Amount (Paid) ',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleFourteen,
                ),
              ),
              Text(
                'XXXX',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleFourteen,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                // Handle download invoice action
              },
              child: Text(
                'Download Invoice',
                style: GoogleFonts.lato(
                  textStyle: Styles.textStyleSixteen,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHelpSection() {
    var height = Get.height;
    var width = Get.width;
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width * 0.9,
        height: height * 0.07,
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 13.5,
        ),
        decoration: BoxDecoration(
          color: AppColor.backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.help_outline,
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: width * 0.65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Need Help?",
                    style: GoogleFonts.lato(
                      textStyle: Styles.textStyleTen,
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_right,
                    size: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
