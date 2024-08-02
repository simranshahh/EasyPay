// ignore_for_file: prefer_const_constructors

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/view/Auth/Login/pages/loginn.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      backgroundColor: ColorConstant.primary,
      durationInSeconds: 2,
      logo: Image.asset('assets/easypay.jpg'),
      title: Text(
        'EasyPay',
        style: TextStyle(
            color: ColorConstant.white,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            fontSize: 32),
      ),
      navigator: LoginScreen(),
      showLoader: true,
      loaderColor: ColorConstant.white,
    );
  }
}
