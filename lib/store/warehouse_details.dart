import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WarehouseDetailsScreen extends StatelessWidget {
  final List<Map<String, String>> warehouses = [
    {
      "title": "Dance Warehouse",
      "price": "₹ 50000/- Per Month",
      "address": "No. of Days 123, XYZ Apt., New Delhi, Delhi Pin - 123456",
      "image": "assets/images/image1.png" // Replace with actual image path
    },
    {
      "title": "Dance Warehouse",
      "price": "₹ 50000/- Per Month",
      "address": "No. of Days 123, XYZ Apt., New Delhi, Delhi Pin - 123456",
      "image": "assets/images/image1.png"
    },
    {
      "title": "Dance Warehouse",
      "price": "₹ 50000/- Per Month",
      "address": "No. of Days 123, XYZ Apt., New Delhi, Delhi Pin - 123456",
      "image": "assets/images/image1.png"
    },
    {
      "title": "Warehouse",
      "price": "₹ 50000/- Per Month",
      "address": "No. of Days 123, XYZ Apt., New Delhi, Delhi Pin - 123456",
      "image": "assets/images/image1.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Warehouse', style: GoogleFonts.lato(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: warehouses.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: const EdgeInsets.all(8.0),
            leading: Image.asset(
              warehouses[index]["image"]!,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text(
              warehouses[index]["title"]!,
              style: GoogleFonts.lato(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  warehouses[index]["price"]!,
                  style: GoogleFonts.lato(),
                ),
                Text(
                  warehouses[index]["address"]!,
                  style: GoogleFonts.lato(),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the FAB action
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
