import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/settings/edit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColorOne,
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: AppColor.backgroundColorOne,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: height * 0.05,
                ),
                height: height * 0.2,
                width: width * 0.9,
                child: Center(
                  child: UserProfileAvatar(
                    avatarUrl: '',
                    radius: 50,
                  ),
                ),
              ),
              const PersonContacts(),
              SizedBox(
                height: height * 0.01,
              ),
              const BusinessDetails(),
              SizedBox(
                height: height * 0.01,
              ),
              const SectionFour(),
              SizedBox(
                height: height * 0.01,
              ),
              const LogOutButton(),
              SizedBox(
                height: height * 0.01,
              ),
              const DeleteButton(),
              SizedBox(
                height: height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DeleteButton extends StatefulWidget {
  const DeleteButton({Key? key});

  @override
  State<DeleteButton> createState() => _DeleteButtonState();
}

class _DeleteButtonState extends State<DeleteButton> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        if (kDebugMode) {
          print('delete button pressed');
        }
        // Add functionality for deleting the account here
      },
      child: Container(
        height: height * 0.08,
        width: width * 0.9,
        padding: EdgeInsets.only(left: width * 0.05),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.backgroundColor,
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_outline_outlined,
                color: Colors.red,
                size: 30,
              ),
            ),
            Text(
              'Delete Account',
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                color: Colors.red,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class LogOutButton extends StatefulWidget {
  const LogOutButton({Key? key});

  @override
  State<LogOutButton> createState() => _LogOutButtonState();
}

class _LogOutButtonState extends State<LogOutButton> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        if (kDebugMode) {
          print('logout button pressed');
        }
      },
      child: Container(
        height: height * 0.08,
        width: width * 0.9,
        padding: EdgeInsets.only(left: width * 0.05),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.backgroundColor,
        ),
        child: Row(
          children: [
            SizedBox(
              width: width * 0.1,
              child: const Icon(
                Icons.logout,
                color: Colors.red,
                size: 30,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: width * 0.03),
              width: width * 0.73,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Logout',
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: Color(0xFF444444),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_right,
                      size: 30,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SectionFour extends StatelessWidget {
  const SectionFour({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomCard(
              icons: const Icon(
                Icons.help_outline,
                size: 28,
              ),
              text: 'Help',
              onTap: () {},
            ),
            CustomCard(
              icons: const Icon(
                Icons.edit_sharp,
                size: 25,
              ),
              text: 'Edit Profile',
              onTap: () {
                Get.to(const EditProfile());
              },
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomCard(
              icons: const Icon(
                Icons.history,
                size: 28,
              ),
              text: 'History',
              onTap: () {},
            ),
            CustomCard(
              icons: const Icon(
                Icons.account_balance_outlined,
                size: 28,
              ),
              text: 'Bank Details',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({
    Key? key,
    required this.icons,
    required this.text,
    required this.onTap,
  });
  final Icon icons;
  final String text;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height * 0.08,
        width: width * 0.43,
        padding: EdgeInsets.only(left: width * 0.05),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icons,
            const SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                color: Color(0xFF444444),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
            )
          ],
        ),
      ),
    );
  }
}

class BusinessDetails extends StatelessWidget {
  const BusinessDetails({Key? key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.3,
      width: width * 0.9,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.backgroundColor,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextBox(
            text1: 'Business/Restaurant Name1',
            text2: 'ABC XYZ Restaurant',
          ),
          TextBox(
            text1: 'Address',
            text2: '111, ABC Apartments, XYZ Road,New Delhi, Delhi',
          ),
          TextBox(
            text1: 'Services',
            text2:
                'Chef Service (One Time, Occasion)Add Ons (Bartenders, Waiters) Tiffin Services Homemaker Services',
          ),
        ],
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  const TextBox({Key? key, required this.text1, required this.text2});
  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: GoogleFonts.inter(
                textStyle: const TextStyle(
              color: Color(0xFF444444),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            )),
          ),
          Text(
            text2,
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
              color: Color(0xFF444444),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class PersonContacts extends StatelessWidget {
  const PersonContacts({Key? key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    // If the future completes successfully, display the user's name
    return Container(
      height: height * 0.09,
      width: width * 0.9,
      padding: EdgeInsets.all(width * 0.03),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi, Dilip',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Color(0xFF222222),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.call,
                size: 16,
                color: Colors.grey,
              ),
              Text(
                ' +919064364294',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(color: Colors.grey),
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
