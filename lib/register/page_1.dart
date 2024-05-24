import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/getx/getx_services.dart';
import 'package:bookmywarehouse_partner/register/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
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
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: Text(
                  'Register yourself and serve more customers',
                  style: Styles.textStyleTen,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              UserProfileAvatar(
                avatarUrl: '',
                radius: 50,
                onAvatarTap: () {
                  print('select your profile image from the gallery');
                },
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomField(
                controller: appSevervicesController.userName.value,
                icon: Icon(Icons.edit),
                text: 'Enter your name',
                width: width * 0.9,
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
