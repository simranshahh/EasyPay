// ignore_for_file: unused_import

import 'package:easypay/utils/app_theme.dart';
import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:flutter/material.dart';

class LoanCalculatorPage extends StatefulWidget {
  const LoanCalculatorPage({super.key});

  @override
  State<LoanCalculatorPage> createState() => _LoanCalculatorPageState();
}

class _LoanCalculatorPageState extends State<LoanCalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/loginimg.png',
          scale: 0.1,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 120, right: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: displayHeight(context),
                width: displayWidth(context),
                decoration: BoxDecoration(
                    color: ColorConstant.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: ColorConstant.grey,
                    )),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Loan Calculator',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: ColorConstant.white,
                    fontFamily: 'Montserrat',
                  ),
                  
            ),
          ],
        ),
      ]),
    );
  }
}
