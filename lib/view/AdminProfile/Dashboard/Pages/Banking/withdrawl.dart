import 'package:easypay/utils/color_constants.dart';
import 'package:flutter/material.dart';

class Withdrawl extends StatefulWidget {
  const Withdrawl({super.key});

  @override
  State<Withdrawl> createState() => _WithdrawlState();
}

class _WithdrawlState extends State<Withdrawl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.land,
        leading: Icon(
          Icons.arrow_back,
          color: ColorConstant.white,
        ),
        title: const Text('Withdraw'),
      ),
    );
  }
}
