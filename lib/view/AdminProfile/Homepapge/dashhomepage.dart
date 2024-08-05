// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:easypay/view/common/Auth/Login/pages/loginn.dart';
import 'package:easypay/view/AdminProfile/Homepapge/recordtable.dart';
import 'package:flutter/material.dart';

class DashHomePage extends StatefulWidget {
  const DashHomePage({super.key});

  @override
  State<DashHomePage> createState() => _DashHomePageState();
}

class _DashHomePageState extends State<DashHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.white,
        body: Container(
          color: ColorConstant.white,
          height: displayHeight(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0, top: 20, right: 5),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: displayHeight(context) * 0.15,
                        width: displayWidth(context) * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstant.primary,
                        ),
                        child: Center(
                          child: Text(
                            '12 \n Total Members',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: ColorConstant.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: displayHeight(context) * 0.15,
                        width: displayWidth(context) * 0.4,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: ColorConstant.grey, blurRadius: 20.0),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstant.white,
                        ),
                        child: Center(
                          child: Text(
                            '12 \n Total Members',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: ColorConstant.land,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: displayHeight(context) * 0.15,
                          width: displayWidth(context) * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.white,
                            boxShadow: [
                              BoxShadow(
                                  color: ColorConstant.grey, blurRadius: 20.0),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              '12 \n Total Members',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: ColorConstant.land,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          height: displayHeight(context) * 0.15,
                          width: displayWidth(context) * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.primary,
                          ),
                          child: Center(
                            child: Text(
                              '12 \n Total Members',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: ColorConstant.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: displayHeight(context) * 0.01,
                  ),
                  SizedBox(
                    // color: Colors.red,
                    height: displayHeight(context),
                    child: Column(
                      children: [
                        Expanded(child: RecordTable()),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(child: RecordTable()),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(child: RecordTable()),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
