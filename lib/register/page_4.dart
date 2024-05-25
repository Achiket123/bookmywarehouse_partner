import 'package:bookmywarehouse_partner/common/label_text.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/getx/getx_services.dart';
import 'package:bookmywarehouse_partner/register/custom_field.dart';
import 'package:bookmywarehouse_partner/register/docs_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageFour extends StatefulWidget {
  const PageFour({super.key});

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  final AppSevervicesController appServicesController = Get.find();

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * .05, vertical: height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Upload documents for verification',
                  style: Styles.textStyleTen,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              DocumnentsDropDown(),
              SizedBox(
                height: height * 0.02,
              ),
              Obx(() {
                TextEditingController controller;
                if (appServicesController.selectedDocument.value == 1) {
                  controller = appServicesController.aadharController.value;
                } else if (appServicesController.selectedDocument.value == 2) {
                  controller = appServicesController.panController.value;
                } else {
                  controller =
                      TextEditingController(); // Default controller if none selected
                }
                return CustomField(
                  icon: Icon(Icons.document_scanner),
                  text: 'Document No',
                  width: width * 0.9,
                  controller: controller,
                  keyboardInput: TextInputType.number,
                );
              }),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Upload Documents',
                style: Styles.textStyleTen,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: height * 0.1,
                        width: height * 0.1,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.upload_file_rounded,
                            size: height * 0.08,
                          ),
                        ),
                      ),
                      Text(
                        'Front',
                        style: Styles.textStyleTen,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: height * 0.1,
                        width: height * 0.1,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.upload_file_rounded,
                            size: height * 0.08,
                          ),
                        ),
                      ),
                      Text(
                        'Back',
                        style: Styles.textStyleTen,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
