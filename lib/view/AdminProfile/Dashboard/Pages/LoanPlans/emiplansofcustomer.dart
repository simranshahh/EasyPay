// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:easypay/utils/color_constants.dart';
import 'package:flutter/material.dart';

class LoanPlansPage extends StatelessWidget {
  const LoanPlansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Loan Plans",
          style: TextStyle(color: ColorConstant.white),
        ),
        backgroundColor: ColorConstant.land,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 12,
          columns: const [
            DataColumn(label: Text('S.N')),
            DataColumn(label: Text('Member Name')),
            DataColumn(label: Text('Branch')),
            DataColumn(label: Text('Product Name')),
            DataColumn(label: Text('Initial Payment')),
            DataColumn(label: Text('Total Cost')),
            DataColumn(label: Text('Remaining Amount')),
            DataColumn(label: Text('Disbursed Date')),
            DataColumn(label: Text('Start Date')),
            DataColumn(label: Text('End Date')),
            DataColumn(label: Text('Status')),
            DataColumn(label: Text('Is Active')),
            DataColumn(label: Text('Actions')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Row(
                children: [
                  CircleAvatar(
                    // backgroundImage: AssetImage('assets/user-image.png'),
                    radius: 15,
                  ),
                  SizedBox(width: 8),
                  Text('Tulsi Tamang'),
                ],
              )),
              DataCell(Text('Chitwan Branch')),
              DataCell(Text('Iphone 15 Pro')),
              DataCell(Text('Rs 50,000')),
              DataCell(Text('Rs 200,000')),
              DataCell(Text('Rs 147,500')),
              DataCell(Text('July 30, 2024')),
              DataCell(Text('July 30, 2024')),
              DataCell(Text('Jan. 30, 2025')),
              DataCell(Text('processing')),
              DataCell(Text('True')),
              DataCell(IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  // Action button pressed
                },
              )),
            ]),
            DataRow(cells: [
              DataCell(Text('2')),
              DataCell(Row(
                children: [
                  CircleAvatar(
                    // backgroundImage: AssetImage('assets/user-image.png'),
                    radius: 15,
                  ),
                  SizedBox(width: 8),
                  Text('Yog Somare'),
                ],
              )),
              DataCell(Text('Butwal branch')),
              DataCell(Text('Iphone 15 Pro')),
              DataCell(Text('Rs 50,000')),
              DataCell(Text('Rs 200,000')),
              DataCell(Text('Rs 147,500')),
              DataCell(Text('July 30, 2024')),
              DataCell(Text('July 30, 2024')),
              DataCell(Text('Jan. 30, 2025')),
              DataCell(Text('processing')),
              DataCell(Text('True')),
              DataCell(IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  // Action button pressed
                },
              )),
            ]),
          ],
        ),
      ),
    );
  }
}
