// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, must_be_immutable, prefer_final_fields, unused_field, deprecated_member_use

import 'package:easypay/utils/color_constants.dart';
import 'package:flutter/material.dart';

import 'dart:async';

class OtpInputPage extends StatefulWidget {
  var contactFromInput;
  OtpInputPage({
    this.contactFromInput,
    super.key,
  });

  @override
  State<OtpInputPage> createState() => _OtpInputPageState();
}

class _OtpInputPageState extends State<OtpInputPage> {
  int secondsRemaining = 90;
  bool enableResend = false;
  Timer? timer;
  int completedInputs = 0;
  bool canMoveToNext = true;
  int maxIterations = 2;
  // OtpFieldController otpcontroller = OtpFieldController();
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  String _otp = "";
  @override
  initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        setState(() {
          enableResend = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.primary,
        body: Padding(
          padding: EdgeInsets.only(left: 20.42, top: 12.41, right: 20.42),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: ColorConstant.white,
                ),
              ),
              const SizedBox(height: 12.42),
              Center(
                child: Text(
                  'We’ve sent a OTP verification code to the e-mail associated.  \nEnter OTP code to continue.',
                  textScaleFactor: 1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorConstant.bluesub,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: Text(
                  ' $secondsRemaining ',
                  style: TextStyle(color: ColorConstant.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpInput(
                    _fieldOne,
                    true,
                  ), // auto focus
                  OtpInput(_fieldTwo, false),
                  OtpInput(_fieldThree, false),
                  OtpInput(_fieldFour, false)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  width: 150,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(ColorConstant.primarydark),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 80, 115, 157),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Verify OTP',
                        style: TextStyle(
                            fontSize: 16,
                            color: ColorConstant.bluesub,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;

  OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        style: TextStyle(color: ColorConstant.bluesub),
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: ColorConstant.white,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorConstant.primarydark)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorConstant.white)),
            border: const OutlineInputBorder(),
            counterText: '',
            hintStyle:
                 TextStyle(color: ColorConstant.black, fontSize: 20.0)),
        onChanged: (value) {
//           if (value.length == 1) {
//             FocusScope.of(context).nextFocus();
// // Decrease the number of iterations
//           }
        },
      ),
    );
  }
}
