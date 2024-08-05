// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:easypay/components/useremitabbar.dart';
import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:easypay/view/common/Auth/Login/pages/loginn.dart';
import 'package:flutter/material.dart';

class EmiPlansPage extends StatefulWidget {
  const EmiPlansPage({super.key});

  @override
  State<EmiPlansPage> createState() => _EmiPlansPageState();
}

class _EmiPlansPageState extends State<EmiPlansPage> {
  late TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: ColorConstant.land,
        ),
        // Image.asset(
        //   'assets/loginimg.png',
        //   scale: 0.01,
        // ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 25, 60, 0),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/memberprofilepage');
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: ColorConstant.white,
                  )),
              Text(
                'Your Emi Plans',
                style: TextStyle(
                  color: ColorConstant.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 160),
          child: Container(
              height: displayHeight(context),
              // width: displayWidth(context) * 0.7,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: ColorConstant.grey, blurRadius: 5)
                  ],
                  color: ColorConstant.white,
                  borderRadius: BorderRadius.circular(15)),
              child: TabBarExample()),
        )
      ]),
    );
  }
}
