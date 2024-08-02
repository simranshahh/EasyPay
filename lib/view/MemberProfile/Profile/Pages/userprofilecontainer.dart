// ignore_for_file: prefer_const_constructors, unused_import

import 'package:easypay/utils/color_constants.dart';
import 'package:flutter/material.dart';

class UserProfileContainer extends StatelessWidget {
  final String? hintText;
  final void Function(String?)? onSaved;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;

  const UserProfileContainer(
      {Key? key,
      this.hintText,
      this.onSaved,
      this.validator,
      this.keyboardType,
      this.obscureText = false,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.edit),
        fillColor: Colors.grey.shade300,
        // filled: true,
        labelText: 'Your Email',
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) return 'Your email';
        return null;
      },
    );
  }
}
