import 'package:bookmywarehouse_partner/constants/colors/colors.dart';
import 'package:bookmywarehouse_partner/constants/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ComplaintPage extends StatefulWidget {
  @override
  _ComplaintPageState createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  List<Map<String, dynamic>> complaints = [];

  void _submitRequest() {
    setState(() {
      complaints.add({
        'subject': _subjectController.text,
        'description': _descriptionController.text,
        'date': DateTime.now(),
        'status': 'Pending',
      });
      _subjectController.clear();
      _descriptionController.clear();
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('MMM dd, yyyy h:mm a').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColor.backgroundColorOne,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColorOne,
        title: Text('Complaint'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
            // Handle back button action
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                'assets/icons/Objects.png',
                height: height * 0.2,
                width: height * 0.2,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                controller: _subjectController,
                decoration: InputDecoration(
                  labelText: 'Subject*',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
                maxLines: 2,
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                style: Styles.buttonStyle,
                child: Text(
                  'Submit Request',
                  style: GoogleFonts.inter(
                    textStyle: Styles.btnStyle,
                  ),
                ),
                onPressed: _submitRequest,
              ),
              SizedBox(height: 24.0), // Add some spacing before the table
              Container(
                // height: 300, // Specify a fixed height for the DataTable
                // width: width,
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 1,
                )),
                child: complaints.isEmpty
                    ? Container(
                        height: height * 0.07,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Subject'),
                            Text('Descriptions'),
                            Text('Status'),
                          ],
                        ),
                      )
                    : SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: DataTable(
                            headingRowColor: WidgetStatePropertyAll(
                              Colors.grey.shade300,
                            ),
                            columns: [
                              DataColumn(label: Text('Subject')),
                              DataColumn(label: Text('Description')),
                              // DataColumn(label: Text('Requested')),
                              DataColumn(label: Text('Status')),
                            ],
                            rows: complaints.map((complaint) {
                              return DataRow(cells: [
                                DataCell(Text(complaint['subject'])),
                                DataCell(Text(complaint['description'])),
                                // DataCell(
                                //     Text(_formatDateTime(complaint['date']))),
                                DataCell(Text(
                                  complaint['status'],
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                )),
                              ]);
                            }).toList(),
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
