import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    var width = Get.width;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.2,
      ),
      width: width * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              print('google button pressed');
            },
            icon: SvgPicture.asset(
              'assets/icons/google.svg',
              height: 40,
              width: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              print('apple button pressed');
            },
            icon: SvgPicture.asset(
              'assets/icons/apple.svg',
              height: 40,
              width: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              print('facebook button pressed');
            },
            icon: SvgPicture.asset(
              'assets/icons/facebook.svg',
              height: 40,
              width: 40,
            ),
          )
        ],
      ),
    );
  }
}
