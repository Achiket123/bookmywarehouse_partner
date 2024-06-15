import 'package:bookmywarehouse_partner/settings/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: UserProfileAvatar(
        avatarUrl: '',
        radius: 15,
        onAvatarTap: () {
          Get.to(ProfileScreen());
        },
      ),
    );
  }
}
