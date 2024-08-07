// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, deprecated_member_use

import 'package:easypay/utils/color_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  List<TransactionItems> items = [
    TransactionItems(
      account_number: '1234',
      edit: Icon(Icons.edit, color: Colors.blueAccent),
      amount: '2345',
      date: '12/2/2020',
      transaction_nature: 'Online',
      delete: Icon(Icons.delete, color: Colors.redAccent),
    ),
    TransactionItems(
      account_number: '5678',
      edit: Icon(Icons.edit, color: Colors.blueAccent),
      amount: '5678',
      date: '13/3/2020',
      transaction_nature: 'Offline',
      delete: Icon(Icons.delete, color: Colors.redAccent),
    ),
    TransactionItems(
      account_number: '9101',
      edit: Icon(Icons.edit, color: Colors.blueAccent),
      amount: '9101',
      date: '14/4/2020',
      transaction_nature: 'Online',
      delete: Icon(Icons.delete, color: Colors.redAccent),
    ),
    TransactionItems(
      account_number: '1121',
      edit: Icon(Icons.edit, color: Colors.blueAccent),
      amount: '1121',
      date: '15/5/2020',
      transaction_nature: 'Offline',
      delete: Icon(Icons.delete, color: Colors.redAccent),
    ),
    TransactionItems(
      account_number: '3141',
      edit: Icon(Icons.edit, color: Colors.blueAccent),
      amount: '3141',
      date: '16/6/2020',
      transaction_nature: 'Online',
      delete: Icon(Icons.delete, color: Colors.redAccent),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Transactions Page',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          backgroundColor: Colors.deepPurple,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          color: ColorConstant.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              border: TableBorder(
                verticalInside: BorderSide(
                  width: 1,
                  color: Colors.grey[300]!,
                  style: BorderStyle.solid,
                ),
              ),
              columnSpacing: 20,
              headingRowHeight: 50,
              dataRowHeight: 60,
              columns: [
                DataColumn(
                  label: Text(
                    'Date',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Account Number',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Transaction Nature',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Amount',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Edit',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Delete',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.deepPurple),
                  ),
                ),
              ],
              rows: items.map((transaction) {
                return DataRow(
                  cells: [
                    DataCell(Text(transaction.date)),
                    DataCell(Text(transaction.account_number)),
                    DataCell(Text(transaction.transaction_nature)),
                    DataCell(Text(transaction.amount)),
                    DataCell(
                      IconButton(
                        onPressed: () {
                          if (kDebugMode) {
                            print('Edit Button Clicked');
                          }
                        },
                        icon: transaction.edit,
                      ),
                    ),
                    DataCell(
                      IconButton(
                        onPressed: () {
                          if (kDebugMode) {
                            print('Delete Button Clicked');
                          }
                        },
                        icon: transaction.delete,
                      ),
                    ),
                  ],
                  color: MaterialStateColor.resolveWith((states) =>
                      states.contains(MaterialState.hovered)
                          ? Colors.grey[200]!
                          : Colors.transparent),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class TransactionItems {
  String date;
  String account_number;
  String transaction_nature;
  String amount;
  Icon edit;
  Icon delete;

  TransactionItems({
    required this.account_number,
    required this.edit,
    required this.amount,
    required this.date,
    required this.transaction_nature,
    required this.delete,
  });
}
