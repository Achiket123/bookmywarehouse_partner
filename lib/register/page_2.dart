import 'package:bookmywarehouse_partner/common/label_text.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/getx/getx_services.dart';
import 'package:bookmywarehouse_partner/register/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  AppSevervicesController appSevervicesController = Get.find();
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: height * 0.02,
            ),
            CustomField(
              keyboardInput: TextInputType.text,
              controller: appSevervicesController.businesName.value,
              icon: Icon(Icons.restaurant_menu_outlined),
              text: 'Enter Business Name(optional)',
              width: width * 0.9,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            LabelText(text: 'Enter Your Address'),
            SizedBox(
              height: height * 0.02,
            ),
            CustomField(
              keyboardInput: TextInputType.text,
              icon: Icon(Icons.home_sharp),
              text: 'Address Line 1',
              width: width * 0.9,
              controller: appSevervicesController.addressLine1.value,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CustomField(
              keyboardInput: TextInputType.text,
              icon: Icon(Icons.home_work),
              text: 'Address Line 2',
              width: width * 0.9,
              controller: appSevervicesController.addressLine2.value,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomField(
                  keyboardInput: TextInputType.text,
                  icon: Icon(Icons.location_city),
                  text: 'City',
                  width: width * 0.42,
                  controller: appSevervicesController.city.value,
                ),
                CustomField(
                  keyboardInput: TextInputType.text,
                  icon: Icon(Icons.location_city),
                  text: 'State',
                  width: width * 0.42,
                  controller: appSevervicesController.state.value,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CustomField(
              keyboardInput: TextInputType.number,
              icon: Icon(Icons.location_city),
              text: 'Pin',
              width: width * 0.9,
              controller: appSevervicesController.pinCode.value,
            )
          ]),
        ),
      ),
    );
  }
}
