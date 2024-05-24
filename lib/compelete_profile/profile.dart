import 'package:bookmywarehouse_partner/common/label_text.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/signup/custom_name_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: height * 0.1,
            left: width * 0.05,
            right: width * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      'Complete Your Profile',
                      style:
                          GoogleFonts.inter(textStyle: Styles.textStyleSeven),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: Text(
                        'Don’t worry, only you can see your personal data. No one else will be able to see it.',
                        style: Styles.textStyleFour,
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
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              LabelText(text: 'Name'),
              SizedBox(
                height: height * 0.01,
              ),
              CustomNameField(),
              LabelText(text: 'Gender'),
            ],
          ),
        ),
      ),
    );
  }
}
