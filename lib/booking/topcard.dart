import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCard extends StatefulWidget {
  const TopCard({super.key});

  @override
  State<TopCard> createState() => _TopCardState();
}

class _TopCardState extends State<TopCard> {
  bool select1 = false, select2 = false, select3 = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              setState(() {
                select1 = true;
                select2 = false;
                select3 = false;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: select1 ? AppColor.primaryColor : AppColor.fontGrey,
                ),
                borderRadius: BorderRadius.circular(10),
                // color: Colors.blue,
              ),
              child: Text(
                'Active (3)',
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: select1 ? AppColor.primaryColor : AppColor.fontGrey,
                )),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              setState(() {
                select1 = false;
                select2 = true;
                select3 = false;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: select2 ? AppColor.primaryColor : AppColor.fontGrey,
                ),
                borderRadius: BorderRadius.circular(10),
                // color: Colors.blue,
              ),
              child: Text(
                'Delivered (4)',
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: select2 ? AppColor.primaryColor : AppColor.fontGrey,
                )),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              setState(() {
                select1 = false;
                select2 = false;
                select3 = true;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: select3 ? AppColor.primaryColor : AppColor.fontGrey,
                ),
                borderRadius: BorderRadius.circular(10),
                // color: Colors.blue,
              ),
              child: Text(
                'New Requests (2)',
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: select3 ? AppColor.primaryColor : AppColor.fontGrey,
                )),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
