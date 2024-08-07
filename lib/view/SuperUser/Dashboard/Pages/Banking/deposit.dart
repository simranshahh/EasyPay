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
        automaticallyImplyLeading: false,
        title: Text('Deposit Page', style: TextStyle(fontSize: 22)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildTextField(
                controller: _memberCodeController,
                labelText: 'Member Code',
                validatorMessage: 'Please enter a member code',
              ),
              _buildDropdownField(),
              _buildTextField(
                controller: _branchController,
                labelText: 'Branch',
                validatorMessage: 'Please enter a branch',
              ),
              _buildTextField(
                controller: _phoneController,
                labelText: 'Phone',
                keyboardType: TextInputType.phone,
                validator: validatePhone,
              ),
              _buildTextField(
                controller: _amountController,
                labelText: 'Amount',
                keyboardType: TextInputType.number,
                validatorMessage: 'Please enter an amount',
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _onCancel,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: _onDeposit,
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
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

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    TextInputType keyboardType = TextInputType.text,
    String? validatorMessage,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(fontSize: 18, color: Colors.deepPurple),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple, width: 1.5),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.5),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: Colors.grey[100],
        ),
        keyboardType: keyboardType,
        validator: validator ??
            (value) {
              if (value == null || value.isEmpty) {
                return validatorMessage;
              }
              return null;
            },
      ),
    );
  }

  Widget _buildDropdownField() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: 'Customer Name',
          labelStyle: TextStyle(fontSize: 18, color: Colors.deepPurple),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple, width: 1.5),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: Colors.grey[100],
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
        value: _selectedCustomer,
        isExpanded: true,
        items: _customers.map((customer) {
          return DropdownMenuItem<String>(
            value: customer,
            child: Text(
              customer,
              style: TextStyle(fontSize: 16),
            ),
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
        dropdownColor: Colors.white,
        iconEnabledColor: Colors.deepPurple,
        iconSize: 28,
      ),
    );
  }

  String? validatePhone(String? value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(pattern);

    if (value == null || value.isEmpty) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
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
