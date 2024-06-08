import 'package:bookmywarehouse_partner/booking/deliver_card.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:flutter/material.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorOne,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CustomerCard(),
            CustomerCard(),
            CustomerCard(),
            CustomerCard(),
          ],
        ),
      ),
    );
  }
}
