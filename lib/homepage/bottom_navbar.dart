// import 'package:bookmywarehouse/widgets/savded_screen.dart';
import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/earnings/earnings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BottomNavBarApp extends StatelessWidget {
  const BottomNavBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  bool isSelected = false;
  static final List<Widget> _widgetOptions = <Widget>[
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.amber,
    ),
    EarningPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      if (index == 3) {
        isSelected = true;
      } else {
        isSelected = false;
      }
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Booking',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              size: 30,
            ),
            label: 'Warehouse',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.message_rounded,
              size: 30,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: isSelected
                        ? AppColor.primaryColor
                        : const Color(0xFF7D8588),
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: const Icon(
                Icons.menu_outlined,
                size: 25,
              ),
            ),
            label: 'Stores',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.currency_rupee,
              size: 30,
            ),
            label: 'Earnings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: const Color(0xFF7D8588),
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
