import 'package:flutter/material.dart';

class AccountInfoModel {
  String date;
  String completedby;
  String accountnumber;
  String transactionature;
  String amount;
  LinearGradient color;

  AccountInfoModel(
      {required this.amount,
      required this.completedby,
      required this.date,
      required this.transactionature,
      required this.accountnumber,
      required this.color,});
}
