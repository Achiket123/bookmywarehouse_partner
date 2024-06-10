import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/store/warehouse_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddWarehouseRequestScreen extends StatefulWidget {
  const AddWarehouseRequestScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddWarehouseRequestScreenState createState() =>
      _AddWarehouseRequestScreenState();
}

class _AddWarehouseRequestScreenState extends State<AddWarehouseRequestScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorOne,
      appBar: AppBar(
        title: const Text('Add Warehouse Request'),
        backgroundColor: AppColor.backgroundColorOne,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                    labelText: 'Warehouse Name*',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Price*',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(
                    Icons.price_change_outlined,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Address*',
                  prefixIcon: const Icon(
                    Icons.location_on_outlined,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text('Category'),
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryButton(
                      label: 'Dance',
                      isSelected: selectedIndex == 0,
                      onTap: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                    ),
                    CategoryButton(
                      label: 'Photography',
                      isSelected: selectedIndex == 1,
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                    ),
                    CategoryButton(
                      label: 'Misc.',
                      isSelected: selectedIndex == 2,
                      onTap: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                    ),
                    CategoryButton(
                      label: 'Luxury',
                      isSelected: selectedIndex == 3,
                      onTap: () {
                        setState(() {
                          selectedIndex = 3;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'About Warehouse',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  // Implement image picker here
                },
                child: Container(
                  height: 84,
                  width: 84,
                  decoration: BoxDecoration(
                      color: AppColor.backgroundColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 1,
                      )),
                  child: const Icon(
                    Icons.add_a_photo,
                    size: 50,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: Get.width * 0.85,
                  child: ElevatedButton(
                    style: Styles.buttonStyle,
                    onPressed: () {
                      // Implement the functionality to post the request
                    },
                    child: Text(
                      'Post Add Warehouse Request',
                      style: GoogleFonts.inter(
                        textStyle: Styles.btnStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
