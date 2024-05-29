import 'dart:ffi';

import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/earnings/card.dart';
import 'package:bookmywarehouse_partner/earnings/earings_card.dart';
import 'package:bookmywarehouse_partner/earnings/earnig_dropdown.dart';
import 'package:bookmywarehouse_partner/earnings/review_sections.dart';
import 'package:bookmywarehouse_partner/earnings/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EarningPage extends StatefulWidget {
  const EarningPage({super.key});

  @override
  State<EarningPage> createState() => _EarningPageState();
}

class _EarningPageState extends State<EarningPage> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColorOne,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.backgroundColorOne,
        title: Text(
          'Earnings',
          style: Styles.textStyleEleven,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: EarningDropDown(),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const EarningsCard(),
              SizedBox(
                height: height * 0.02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EarningsCardOne(
                    text1: '13',
                    text2: 'New One TIme Orders',
                  ),
                  EarningsCardOne(
                    text1: '2',
                    text2: 'New Subscription Orders',
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EarningsCardOne(
                    text1: '34',
                    text2: 'Subscription Orders Delivered',
                  ),
                  EarningsCardOne(
                    text1: '39',
                    text2: 'Total Subscription Orders',
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const ReviewSections(),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Transaction History',
                style: GoogleFonts.inter(
                  textStyle: Styles.textStyleThree,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TransactionCard(
                amount: '6000',
                id: '12345',
                isCredited: true,
                text: 'Warehouse Service',
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TransactionCard(
                amount: '500',
                id: '678137916388',
                isCredited: false,
                text: 'Withdrawal to XXXX2010',
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TransactionCard(
                amount: '6000',
                id: '12345',
                isCredited: true,
                text: 'Warehouse Service',
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
