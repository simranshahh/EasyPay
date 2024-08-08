// ignore_for_file: prefer_const_declarations, prefer_const_constructors

import 'package:flutter/material.dart';

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
const String addtocart = "Added to Favorites";
const String removefromcart = "Removed from Favorites";
const String addedtocart = "This item has been added to your favorites.";
const String removedfromcart =
    "This item has been removed from your favorites.";

void snackbar(
  BuildContext context,
  String text,
) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
  ));
}
