// ignore_for_file: prefer_const_constructors

import 'dart:math'; // Import the dart:math library
import 'package:easypay/utils/color_constants.dart';
import 'package:flutter/material.dart';

class LoanCalculatorPage extends StatefulWidget {
  const LoanCalculatorPage({super.key});

  @override
  State<LoanCalculatorPage> createState() => _LoanCalculatorPageState();
}

class _LoanCalculatorPageState extends State<LoanCalculatorPage> {
  final _loanAmountController = TextEditingController();
  final _interestRateController = TextEditingController();
  final _loanTermController = TextEditingController();

  String _emiResult = "";

  void _calculateEmi() {
    final double loanAmount = double.tryParse(_loanAmountController.text) ?? 0;
    final double annualInterestRate =
        double.tryParse(_interestRateController.text) ?? 0;
    final int loanTermMonths = int.tryParse(_loanTermController.text) ?? 0;

    if (loanAmount <= 0 || annualInterestRate <= 0 || loanTermMonths <= 0) {
      setState(() {
        _emiResult = "Please enter valid values.";
      });
      return;
    }

    final double monthlyInterestRate = (annualInterestRate / 100) / 12;
    final double emi = (loanAmount *
            monthlyInterestRate *
            pow(1 + monthlyInterestRate, loanTermMonths)) /
        (pow(1 + monthlyInterestRate, loanTermMonths) - 1);

    setState(() {
      _emiResult = "Loan EMI: ${emi.toStringAsFixed(2)}";
      _emiResult = "Total Payable Interest: ${emi.toStringAsFixed(2)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Loan Calculator",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: ColorConstant.land,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Loan Amount",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _loanAmountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter loan amount",
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Annual Interest Rate (%)",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _interestRateController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter annual interest rate",
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Loan Term (Months)",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _loanTermController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter loan term in months",
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: _calculateEmi,
              child: Text("Calculate EMI"),
            ),
            SizedBox(height: 24),
            Text(
              _emiResult,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
