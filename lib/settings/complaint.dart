import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaint'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button action
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
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
              maxLines: 5,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              child: Text('Submit Request'),
              onPressed: _submitRequest,
            ),
            Expanded(
              child: complaints.isEmpty
                  ? Center(child: Text('No complaints yet'))
                  : SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text('Subject')),
                          DataColumn(label: Text('Description')),
                          DataColumn(label: Text('Date')),
                          DataColumn(label: Text('Status')),
                        ],
                        rows: complaints.map((complaint) {
                          return DataRow(cells: [
                            DataCell(Text(complaint['subject'])),
                            DataCell(Text(complaint['description'])),
                            DataCell(Text(_formatDateTime(complaint['date']))),
                            DataCell(Text(complaint['status'])),
                          ]);
                        }).toList(),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
