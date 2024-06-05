import 'package:bookmywarehouse_partner/booking/request_card.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:flutter/material.dart';

class NewRequestPage extends StatefulWidget {
  const NewRequestPage({super.key});

  @override
  State<NewRequestPage> createState() => _NewRequestPageState();
}

class _NewRequestPageState extends State<NewRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorOne,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            BookingCard(),
            BookingCard(),
            BookingCard(),
            BookingCard(),
          ],
        ),
      ),
    );
  }
}
