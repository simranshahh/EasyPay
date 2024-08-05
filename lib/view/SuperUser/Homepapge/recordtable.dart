// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:flutter/material.dart';

class RecordTable extends StatefulWidget {
  const RecordTable({super.key});

  @override
  State<RecordTable> createState() => _RecordTableState();
}

class _RecordTableState extends State<RecordTable> {
  List<PendingRecordLists> record = [
    PendingRecordLists(number: '3'),
    PendingRecordLists(number: '5'),
    PendingRecordLists(number: '2'),
    PendingRecordLists(number: '1'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(left: 18.0, top: 18, right: 18),
          child: Container(
            height: displayHeight(context) * 0.565,
            width: displayWidth(context) * 0.85,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorConstant.white,
                boxShadow: [
                  BoxShadow(color: ColorConstant.grey, spreadRadius: 1.0)
                ]),
            child:
                // child: Container(
                //   // height: displayHeight(context) * 0.01,
                //   width: displayWidth(context) * 0.01,
                //   color: ColorConstant.white,
                //   child: Padding(
                //     padding: const EdgeInsets.all(5.0),
                //     child:
                Padding(
              padding: const EdgeInsets.only(
                left: 0,
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pending Records',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color.fromARGB(255, 107, 99, 99),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          // ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, top: 61),
          child: Container(
            height: displayHeight(context) * 0.5,
            width: displayWidth(context) * 0.85,
            decoration: BoxDecoration(
                color: ColorConstant.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: const Color.fromARGB(255, 210, 210, 210),
                      blurRadius: 2)
                ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pending Number of EMI Today'),
                    Text('Pending Amount of EMI Today'),
                    Text('Pending Number of EMI Till Today'),
                    Text('Pending Amount of EMI Till Today'),
                  ],
                ),
                SizedBox(
                  width: 29,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorConstant.land,
                      radius: 14,
                      child: Text(
                        '0',
                        style:
                            TextStyle(fontSize: 16, color: ColorConstant.white),
                      ), //Text
                    ),
                    CircleAvatar(
                      backgroundColor: ColorConstant.land,
                      radius: 14,
                      child: Text(
                        '0',
                        style:
                            TextStyle(fontSize: 16, color: ColorConstant.white),
                      ), //Text
                    ),
                    CircleAvatar(
                      backgroundColor: ColorConstant.land,
                      radius: 14,
                      child: Text(
                        '0',
                        style:
                            TextStyle(fontSize: 16, color: ColorConstant.white),
                      ), //Text
                    ),
                    CircleAvatar(
                      backgroundColor: ColorConstant.land,
                      radius: 14,
                      child: Text(
                        '0',
                        style:
                            TextStyle(fontSize: 16, color: ColorConstant.white),
                      ), //Text
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
    // );
  }
}

class PendingRecordLists {
  String number;
  PendingRecordLists({
    required this.number,
  });
}
