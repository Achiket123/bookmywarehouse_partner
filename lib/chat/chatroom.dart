import 'package:bookmywarehouse_partner/chat/chatpage.dart';
import 'package:bookmywarehouse_partner/common/appbar.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key});

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    // var width = Get.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColorOne,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColorOne,
        title: AppBarScreen(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            const ChatroomCard(
              isSeen: true,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const ChatroomCard(
              isSeen: false,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const ChatroomCard(
              isSeen: true,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const ChatroomCard(
              isSeen: true,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const ChatroomCard(
              isSeen: false,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const ChatroomCard(
              isSeen: true,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const ChatroomCard(
              isSeen: true,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const ChatroomCard(
              isSeen: true,
            ),
            SizedBox(
              height: height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}

class ChatroomCard extends StatefulWidget {
  const ChatroomCard({
    super.key,
    required this.isSeen,
  });
  final bool isSeen;
  @override
  State<ChatroomCard> createState() => _ChatroomCardState();
}

class _ChatroomCardState extends State<ChatroomCard> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    DateTime now = DateTime.now();
    String formattedTime = "${now.hour}:${now.minute}";
    return InkWell(
      onTap: () {
        print('chat page open');
        Get.to(const ChatPage());
      },
      child: Container(
        height: height * 0.1,
        width: width * 0.9,
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.05,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            UserProfileAvatar(
              avatarUrl: '',
              radius: 25,
            ),
            SizedBox(
              width: width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ID: 123456',
                        style: GoogleFonts.inter(
                          textStyle: Styles.textStyleFourteen,
                        ),
                      ),
                      Text(
                        'Hello',
                        style: GoogleFonts.inter(
                          textStyle: Styles.textStyleTen,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        formattedTime,
                        style: GoogleFonts.inter(
                          textStyle: Styles.textStyleTen,
                        ),
                      ),
                      widget.isSeen
                          ? const SizedBox()
                          : Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: AppColor.primaryColor,
                              ),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      color: AppColor.backgroundColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
