import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:bookmywarehouse_partner/store/add_warehouse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WarehouseDetailsScreen extends StatefulWidget {
  const WarehouseDetailsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WarehouseDetailsScreenState createState() => _WarehouseDetailsScreenState();
}

class _WarehouseDetailsScreenState extends State<WarehouseDetailsScreen> {
  final List<Map<String, String>> warehouseList = [
    {
      'title': 'Dance Warehouse',
      'price': '₹ 50000/- Per Month',
      'address': 'No. of Days 123, XYZ Apt., New Delhi, Delhi Pin - 123456',
      'image': 'assets/images/image1.png'
    },
    {
      'title': 'Dance Warehouse',
      'price': '₹ 50000/- Per Month',
      'address': 'No. of Days 123, XYZ Apt., New Delhi, Delhi Pin - 123456',
      'image': 'assets/images/image1.png'
    },
    {
      'title': 'Dance Warehouse',
      'price': '₹ 50000/- Per Month',
      'address': 'No. of Days 123, XYZ Apt., New Delhi, Delhi Pin - 123456',
      'image': 'assets/images/image1.png'
    },
    {
      'title': 'Warehouse',
      'price': '₹ 50000/- Per Month',
      'address': 'No. of Days 123, XYZ Apt., New Delhi, Delhi Pin - 123456',
      'image': 'assets/images/image1.png'
    },
    {
      'title': 'Dance Warehouse',
      'price': '₹ 50000/- Per Month',
      'address': 'No. of Days 123, XYZ Apt., New Delhi, Delhi Pin - 123456',
      'image': 'assets/images/image1.png'
    },
    {
      'title': 'Dance Warehouse',
      'price': '₹ 50000/- Per Month',
      'address': 'No. of Days 123, XYZ Apt., New Delhi, Delhi Pin - 123456',
      'image': 'assets/images/image1.png'
    },
    {
      'title': 'Dance Warehouse',
      'price': '₹ 50000/- Per Month',
      'address': 'No. of Days 123, XYZ Apt., New Delhi, Delhi Pin - 123456',
      'image': 'assets/images/image1.png'
    },
    {
      'title': 'Warehouse',
      'price': '₹ 50000/- Per Month',
      'address': 'No. of Days 123, XYZ Apt., New Delhi, Delhi Pin - 123456',
      'image': 'assets/images/image1.png'
    },
  ];

  int selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColorOne,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColorOne,
        title: const Text('Warehouse'),
      ),
      body: Column(
        children: [
          const Divider(),
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
                    _pageController.jumpToPage(0);
                  },
                ),
                CategoryButton(
                  label: 'Photography',
                  isSelected: selectedIndex == 1,
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                    _pageController.jumpToPage(1);
                  },
                ),
                CategoryButton(
                  label: 'Misc.',
                  isSelected: selectedIndex == 2,
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                    _pageController.jumpToPage(2);
                  },
                ),
                CategoryButton(
                  label: 'Luxury',
                  isSelected: selectedIndex == 3,
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                    _pageController.jumpToPage(3);
                  },
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              children: [
                WareHouseListScreen(warehouseList: warehouseList),
                WareHouseListScreen(warehouseList: warehouseList),
                WareHouseListScreen(warehouseList: warehouseList),
                WareHouseListScreen(warehouseList: warehouseList),
                // Center(child: Text('Photography Page')),
                // Center(child: Text('Misc. Page')),
                // Center(child: Text('Luxury Page')),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primaryColor,
        onPressed: () {
          Get.to(const AddWarehouseRequestScreen());
        },
        child: Icon(
          Icons.add,
          color: AppColor.backgroundColor,
          size: 25,
        ),
      ),
    );
  }
}

class WareHouseListScreen extends StatelessWidget {
  final List<Map<String, String>> warehouseList;

  const WareHouseListScreen({super.key, required this.warehouseList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: warehouseList.length,
      itemBuilder: (context, index) {
        final warehouse = warehouseList[index];
        return WarehouseListItem(
          title: warehouse['title']!,
          price: warehouse['price']!,
          address: warehouse['address']!,
          imageUrl: warehouse['image']!,
        );
      },
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: isSelected ? AppColor.primaryColor : AppColor.backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color:
                    isSelected ? AppColor.backgroundColor : AppColor.fontBlack,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class WarehouseListItem extends StatelessWidget {
  final String title;
  final String price;
  final String address;
  final String imageUrl;

  const WarehouseListItem({
    super.key,
    required this.title,
    required this.price,
    required this.address,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Container(
      height: height * 0.14,
      margin: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    textStyle: Styles.textStyleFourteen,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  price,
                  style: GoogleFonts.inter(
                    textStyle: Styles.textStyleTen,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  address,
                  style: GoogleFonts.inter(
                    textStyle: Styles.textStyleTen,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            imageUrl,
            height: 90,
            width: 90,
          ),
        ],
      ),
    );
  }
}
