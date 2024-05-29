import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionCard extends StatefulWidget {
  TransactionCard({
    super.key,
    required this.amount,
    required this.id,
    required this.isCredited,
    required this.text,
  });
  final String amount, text, id;
  bool isCredited;

  @override
  State<TransactionCard> createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Container(
      height: height * 0.1,
      width: width * 0.9,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: height * 0.01,
      ),
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: AppColor.backgroundColor,
        ),
      ),
      child: widget.isCredited
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ID: ${widget.id}',
                      style: Styles.textStyleFour,
                    ),
                    Text(
                      widget.text,
                      style: GoogleFonts.inter(
                          textStyle: Styles.textStyleFourteen),
                    ),
                  ],
                ),
                Text(
                  '+ ₹${widget.amount}',
                  style: GoogleFonts.inter(
                    textStyle: Styles.textStyleEight,
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Transaction ID: ${widget.id}',
                      style: Styles.textStyleFour,
                    ),
                    Text(
                      widget.text,
                      style: GoogleFonts.inter(
                          textStyle: Styles.textStyleFourteen),
                    ),
                  ],
                ),
                Text(
                  '- ₹${widget.amount}',
                  style: Styles.textStyleThirteen,
                ),
              ],
            ),
    );
  }
}
