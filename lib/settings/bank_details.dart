import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/settings/add_account.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BankDetailsPage extends StatelessWidget {
  const BankDetailsPage({super.key});

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
              'Select or Add bank details :',
              style: GoogleFonts.inter(
                textStyle: Styles.textStyleFourteen,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: const [
                  BankDetailItem(
                    bankLogo: 'assets/icons/logo1.png',
                    accountHolder: 'John Doe',
                    accountNumber: 'XXXX XXXX 1345',
                    isSelected: true,
                  ),
                  BankDetailItem(
                    bankLogo: 'assets/icons/logo2.png',
                    accountHolder: 'John Doe',
                    accountNumber: 'XXXX XXXX 5431',
                    isSelected: false,
                  ),
                  AddBankButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BankDetailItem extends StatelessWidget {
  final String bankLogo;
  final String accountHolder;
  final String accountNumber;
  final bool isSelected;

  const BankDetailItem({
    super.key,
    required this.bankLogo,
    required this.accountHolder,
    required this.accountNumber,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(bankLogo),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  accountHolder,
                  style: GoogleFonts.inter(
                    textStyle: Styles.textStyleTen,
                  ),
                ),
                Text(
                  'A/c No. $accountNumber',
                  style: GoogleFonts.inter(
                    textStyle: Styles.textStyleTen,
                  ),
                ),
              ],
            ),
          ),
          if (isSelected) const Icon(Icons.check_circle, color: Colors.green),
        ],
      ),
    );
  }
}

class AddBankButton extends StatelessWidget {
  const AddBankButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const AddBankAccountPage());
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6.0,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: const Center(
          child: Icon(Icons.add, size: 40),
        ),
      ),
    );
  }
}
