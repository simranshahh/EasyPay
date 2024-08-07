// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:easypay/view/common/LandingPage/pages/bottomnavbar.dart';
import 'package:easypay/view/common/LandingPage/pages/landingpagetabbar.dart';
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
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 90),
          child: Container(
            color: ColorConstant.white,
            child: SearchBar(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.focused)) {
                    return Colors.grey[200]!;
                  }
                  return Colors.white;
                },
              ),
              hintText: 'Seach for items',
              hintStyle: MaterialStateProperty.all<TextStyle>(
                TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              leading: Icon(
                Icons.search,
                color: ColorConstant.grey,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 22.0),
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
          padding: EdgeInsets.only(top: 130.0),
          child: SizedBox(
            height: 190,
            width: displayWidth(context),
            child: ListView(children: [
              CarouselSlider(
                items: [
                  _buildCarouselItem(
                    imagePath: "assets/banner.jpg",
                  ),
                  _buildCarouselItem(
                    imagePath: "assets/baner.jpg",
                  ),
                  _buildCarouselItem(
                    imagePath: "assets/banner1.jpg",
                  ),
                ],
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.easeInOut,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  viewportFraction: 0.8,
                  initialPage: 0,
                  scrollPhysics: BouncingScrollPhysics(),
                  pauseAutoPlayOnTouch: true,
                  autoPlayInterval: Duration(seconds: 3),
                ),
              ),
            ]),
          ),
        ),
        Expanded(child: Landingpagetabbar()),
      ]),
    );
  }
}

Widget _buildCarouselItem({
  required String imagePath,
}) {
  return Container(
    margin: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          offset: Offset(0, 5),
        ),
      ],
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.3),
          BlendMode.darken,
        ),
      ),
    ),
  );
}
