import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Options extends StatelessWidget {
  Options({
    super.key,
    required this.text1,
    required this.text2,
    required this.callback,
  });
  final String text1, text2;
  VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    var width = Get.width;
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: Styles.textStyleFive,
          ),
          InkWell(
            onTap: callback,
            child: Text(
              text2,
              style: Styles.textStyleSix,
            ),
          )
        ],
      ),
    );
  }
}
