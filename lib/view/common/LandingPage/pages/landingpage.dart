// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:banner_carousel/banner_carousel.dart';
import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:easypay/view/common/LandingPage/pages/bottomnavbar.dart';
import 'package:easypay/view/common/LandingPage/pages/landingpagetabbar.dart';
import 'package:easypay/view/common/LandingPage/pages/topcategories.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.white,
      body: Stack(children: [
        Container(
          height: displayHeight(context) * 0.1,
          width: displayWidth(context),
          decoration: BoxDecoration(
            color: ColorConstant.land,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('EASYPAY',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: ColorConstant.white, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 80.0),
          child: SizedBox(
            height: 190,
            width: displayWidth(context),
            child: BannerCarousel(
              banners: BannerImages.listBanners,
              onTap: (id) => print(id),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 280.0),
          child: Container(
            height: 40,
            width: displayWidth(context),
            color: Colors.grey.withOpacity(0.2),
            child: Center(
                child: Text(
              'Top Categories',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        ),
        Expanded(child: TopCategories()),
        Expanded(child: Landingpagetabbar()),
      ]),
    );
  }
}

class BannerImages {
  static const String banner1 =
      "https://img.freepik.com/premium-vector/furniture-sale-cover-page-design-web-banner-furniture-product-promotion-template_612834-316.jpg";
  static const String banner2 =
      "https://img.lovepik.com/desgin_photo/45008/4299_detail.jpg!odetail650";
  static const String banner3 = "https://wallpaperaccess.com/full/19921.jpg";
  static const String banner4 =
      "https://images.pexels.com/photos/2635817/pexels-photo-2635817.jpeg?auto=compress&crop=focalpoint&cs=tinysrgb&fit=crop&fp-y=0.6&h=500&sharp=20&w=1400";

  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}
