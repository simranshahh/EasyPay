// ignore_for_file: prefer_const_declarations, prefer_const_constructors

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF5D5B5B);
const oTextColor = Color(0xFF3B3434);
const kdividercolor = Color.fromARGB(255, 209, 209, 209);
const ksimmeracolor = Color.fromARGB(255, 226, 226, 226);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
final String welcometitle = "'Welcome back, you've been missed!'";
final RegExp nameValidatorRegExp = RegExp("a");
final RegExp numberRegExp = RegExp(r'^[0-9]+$');
const String kEmailNullError = "Please Enter your email";
const String knameNullError = "Please Enter your name";
const String knamevalidError = "Please Enter you valid name";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular((15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

void snackbar(
  BuildContext context,
  String text,
) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
  ));
}
