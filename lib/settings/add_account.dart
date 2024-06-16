import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddBankAccountPage extends StatelessWidget {
  const AddBankAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorOne,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColorOne,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
            Get.back();
          },
        ),
        title: Text('Bank Details',
            style: GoogleFonts.inter(
              textStyle: Styles.textStyleEleven,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add New Bank Account :',
              style: GoogleFonts.inter(
                textStyle: Styles.textStyleFourteen,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Account No.',
                labelStyle: TextStyle(color: AppColor.primaryColor),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.primaryColor,
                    width: 1,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.primaryColor,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'IFSC Code',
                labelStyle: TextStyle(color: AppColor.primaryColor),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.primaryColor,
                    width: 1,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.primaryColor,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelStyle: TextStyle(color: AppColor.primaryColor),
                labelText: 'Account Holder’s Name',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.primaryColor,
                    width: 1,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.primaryColor,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle proceed button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: Text(
                  'PROCEED',
                  style: TextStyle(
                    color: AppColor.backgroundColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
