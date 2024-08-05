// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:easypay/view/common/Auth/Login/pages/loginn.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginScreen()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: ColorConstant.white,
              )),
          backgroundColor: ColorConstant.land,
          title: Text(
            'Forgot Password',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       IconButton(
            //         icon: Icon(Icons.arrow_back),
            //         onPressed: () {
            //           Navigator.pushNamed(context, '/login');
            //         },
            //       ),
            //       Text(
            //         '  Forgot Password',
            //         style: TextStyle(
            //             color: ColorConstant.black,
            //             fontFamily: 'Montserrat',
            //             fontWeight: FontWeight.normal,
            //             fontSize: 22),
            //       )
            //     ],
            //   ),
            // ),
            Container(
              height: displayHeight(context) * 0.001,
              color: ColorConstant.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Please Enter the Phone Number for OTP'),
                  SizedBox(
                    height: displayHeight(context) * 0.04,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,

                    // controller: passwordCtrl,
                    // validator: FormBuilderValidators.compose([
                    //   FormBuilderValidators.required(),
                    //   FormBuilderValidators.minLength(6)
                    // ]),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(Icons.phone), onPressed: () => () {}),
                      // prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      labelText: 'Phone Number',
                    ),
                    //obscureText: offsecureText1,
                  ),
                  SizedBox(
                    height: displayHeight(context) * 0.06,
                  ),
                  SizedBox(
                    width: 330,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.land, // background
                        foregroundColor: ColorConstant.white, // foreground
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/otp');
                      },
                      child: Text("Send"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
