// ignore_for_file: prefer_const_constructors

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:flutter/material.dart';

class Landingpagetabbar extends StatefulWidget {
  const Landingpagetabbar({super.key});

  @override
  State<Landingpagetabbar> createState() => _LandingpagetabbarState();
}

class _LandingpagetabbarState extends State<Landingpagetabbar> {
  final List<String> imageUrls = [
    'assets/a.png',
    'assets/b.png',
    'assets/c.png',
    'assets/a.png',
    'assets/b.png',
    'assets/c.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 335.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Categories',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: displayHeight(context) * 0.1,
              // width: displayWidth(context) * 0.3,
              child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: displayHeight(context) * 0.08,
                      width: displayWidth(context) * 0.2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Image.asset(imageUrls[index]),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: displayHeight(context) * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Trending Sales',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: displayHeight(context) * 0.03,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: displayHeight(context) * 0.25,
                        width: displayWidth(context) * 0.3,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: ColorConstant.grey,
                                  blurRadius: 0.01,
                                  spreadRadius: 0.01)
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.white),
                        child: Column(
                          children: [
                            Image.asset('assets/f3.jpg'),
                            Text(
                              'Samsung Tv\n Rs.22000',
                              style: Theme.of(context).textTheme.bodyLarge,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: displayHeight(context) * 0.25,
                        width: displayWidth(context) * 0.3,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: ColorConstant.grey,
                                  blurRadius: 0.01,
                                  spreadRadius: 0.01)
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.white),
                        child: Column(
                          children: [
                            Image.asset('assets/f2.jpg'),
                            Text(
                              'Samsung Tv\n Rs.22000',
                              style: Theme.of(context).textTheme.bodyLarge,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: displayHeight(context) * 0.25,
                        width: displayWidth(context) * 0.3,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: ColorConstant.grey,
                                  blurRadius: 0.01,
                                  spreadRadius: 0.01)
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.white),
                        child: Column(
                          children: [
                            Image.asset('assets/f1.jpg'),
                            Text(
                              'Samsung Tv\n Rs.22000',
                              style: Theme.of(context).textTheme.bodyLarge,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: displayHeight(context) * 0.25,
                        width: displayWidth(context) * 0.3,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: ColorConstant.grey,
                                  blurRadius: 0.01,
                                  spreadRadius: 0.01)
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.white),
                        child: Column(
                          children: [
                            Image.asset('assets/f3.jpg'),
                            Text(
                              'Samsung Tv\n Rs.22000',
                              style: Theme.of(context).textTheme.bodyLarge,
                            )
                          ],
                        ),
                      ),
                    ],
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

class ProductCategories {
  Image image;

  ProductCategories({required this.image});
}
