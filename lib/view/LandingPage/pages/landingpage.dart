// ignore_for_file: prefer_const_constructors, unused_import

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:easypay/view/LandingPage/pages/bottomnavbar.dart';
import 'package:easypay/view/LandingPage/pages/landingpagetabbar.dart';
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.white,
        // bottomNavigationBar: Bottomnavbar(),
        body: Stack(children: [
          Container(
            height: displayHeight(context) * 0.1,
            width: displayWidth(context),
            decoration: BoxDecoration(
                color: ColorConstant.land,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
            child: SearchBar(
              leading: Icon(
                Icons.search,
                color: ColorConstant.grey,
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('EASYPAY',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: ColorConstant.white)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 140.0),
            child: SizedBox(
              height: 200,
              child: ListView(children: [
                CarouselSlider(
                  items: [
                    Container(
                      margin:  EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image:  DecorationImage(
                          image: AssetImage("assets/banner.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image:  DecorationImage(
                          image: AssetImage("assets/baner.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image:  DecorationImage(
                            image: AssetImage("assets/banner1.jpg")),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ]),
            ),
          ),
          Expanded(child: Landingpagetabbar()),
        ]),
      ),
    );
  }
}
