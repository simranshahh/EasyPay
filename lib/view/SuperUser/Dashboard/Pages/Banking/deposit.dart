// ignore_for_file: prefer_const_constructors, unused_element, library_private_types_in_public_api

import 'package:flutter/material.dart';

class DepositPage extends StatefulWidget {
  const DepositPage({super.key});

  @override
  _DepositPageState createState() => _DepositPageState();
}

class _DepositPageState extends State<DepositPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _memberCodeController = TextEditingController();
  final TextEditingController _branchController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  final List<String> _customers = ['John Doe', 'Jane Smith', 'Alice Johnson'];
  String? _selectedCustomer;

  void _onCancel() {
    _formKey.currentState?.reset();
    _memberCodeController.clear();
    _branchController.clear();
    _phoneController.clear();
    _amountController.clear();

    setState(() {
      _selectedCustomer = null;
    });
  }

  void _onDeposit() {
    if (_formKey.currentState?.validate() ?? false) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Deposit successful!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deposit Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _memberCodeController,
                decoration: InputDecoration(labelText: 'Member Code'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a member code';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Customer Name'),
                value: _selectedCustomer,
                items: _customers.map((customer) {
                  return DropdownMenuItem<String>(
                    value: customer,
                    child: Text(customer),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCustomer = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a customer name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _branchController,
                decoration: InputDecoration(labelText: 'Branch'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a branch';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Phone'),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  String? validateMobile(String value) {
                    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                    RegExp regExp = RegExp(pattern);

                    if (value.isEmpty) {
                      return 'Please enter mobile number';
                    } else if (!regExp.hasMatch(value)) {
                      return 'Please enter valid mobile number';
                    }

                    return null;
                  }

                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  if (value != _phoneController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _amountController,
                decoration: InputDecoration(labelText: 'Amount'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an amount';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _onCancel,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    child: Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: _onDeposit,
                    child: Text('Deposit'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _memberCodeController.dispose();
    _branchController.dispose();
    _phoneController.dispose();
    _amountController.dispose();
    super.dispose();
  }
}
