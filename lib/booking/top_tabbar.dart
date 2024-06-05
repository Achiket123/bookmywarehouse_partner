import 'package:bookmywarehouse_partner/booking/active.dart';
import 'package:bookmywarehouse_partner/booking/delivery_page.dart';
import 'package:bookmywarehouse_partner/booking/new_request.dart';
import 'package:bookmywarehouse_partner/common/appbar.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopTabBars extends StatelessWidget {
  const TopTabBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColorOne,
        title: const AppBarScreen(),
      ),
      body: DefaultTabController(
        initialIndex: 0,
        length: 3, // Number of tabs
        child: Column(
          children: [
            Container(
              color: AppColor.backgroundColorOne,
              child: TabBar(
                indicatorColor: AppColor.primaryColor,
                labelColor: AppColor.primaryColor,
                unselectedLabelColor: AppColor.fontGrey,
                labelStyle: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                tabs: const [
                  Tab(text: 'Active(3)'),
                  Tab(text: 'Delivered(4)'),
                  Tab(text: 'New Requests(2)'),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  ActivePage(),
                  DeliveryPage(),
                  NewRequestPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
