import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/settings/complaint.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button press
            Get.back();
          },
        ),
        title: Text('Help',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Text(
                    'Help & FAQs',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildHelpItem(
                    'Services we offer',
                    () {
                      // Handle list item tap
                    },
                  ),
                  _buildHelpItem(
                    'How to get started with our services',
                    () {
                      // Handle list item tap
                    },
                  ),
                  _buildHelpItem(
                    'My Profile',
                    () {
                      // Handle list item tap
                    },
                  ),
                  _buildHelpItem(
                    'Changes to project scope',
                    () {
                      // Handle list item tap
                    },
                  ),
                  _buildHelpItem(
                    'Report & Invoices',
                    () {
                      Get.to(ComplaintPage());
                      // Handle list item tap
                    },
                  ),
                  _buildHelpItem(
                    'Support after the project completion',
                    () {
                      // Handle list item tap
                    },
                  ),
                  _buildHelpItem(
                    'Others',
                    () {
                      // Handle list item tap
                    },
                  ),
                  _buildContactUsSection(),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle raise ticket button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: Text(
                  'RAISE TICKET',
                  style: TextStyle(color: AppColor.backgroundColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHelpItem(
    String title,
    VoidCallback onTap,
  ) {
    return ListTile(
      title: Text(title, style: GoogleFonts.inter(fontSize: 14)),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }

  Widget _buildContactUsSection() {
    return ExpansionTile(
      title: Text(
        'Contact Us',
        style: GoogleFonts.inter(
          fontSize: 14,
          color: Colors.green,
        ),
      ),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildContactButton(Icons.mail, 'Mail Us'),
            _buildContactButton(Icons.call, 'Call Us'),
          ],
        ),
      ],
      tilePadding: const EdgeInsets.all(16.0),
      backgroundColor: Colors.white,
      collapsedBackgroundColor: Colors.white,
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }

  Widget _buildContactButton(IconData icon, String label) {
    return ElevatedButton.icon(
      onPressed: () {
        // Handle button press
      },
      icon: Icon(icon, color: Colors.black),
      label: Text(label, style: GoogleFonts.inter(color: Colors.black)),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(color: Colors.black),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
