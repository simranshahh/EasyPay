// ignore_for_file: prefer_const_constructors

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:easypay/view/LandingPage/pages/electronicstabbar.dart';
import 'package:flutter/material.dart';

class LandingElectronics extends StatefulWidget {
  const LandingElectronics({super.key});

  @override
  State<LandingElectronics> createState() => _LandingElectronicsState();
}

class _LandingElectronicsState extends State<LandingElectronics> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Electronics Items',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: displayHeight(context) * 0.09,
                      width: displayWidth(context) * 0.75,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey, // Placeholder color
                          ),
                          hintText: 'Search',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                        ),
                      ),
                    ),
                    Container(
                      height: displayHeight(context) * 0.065,
                      width: displayWidth(context) * 0.12,
                      decoration: BoxDecoration(
                          color: ColorConstant.land,
                          borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.sort_sharp,
                            color: ColorConstant.white,
                          )),
                    )
                  ],
                ),
                Container(
                    width: displayWidth(context),
                    height: displayHeight(context) * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.grey,
                          )
                        ],
                        color: Colors.white),
                    child: Image.asset(
                      'assets/banner.jpg',
                      fit: BoxFit.fill,
                    )),
                SizedBox(
                  height: displayHeight(context) * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      'See All',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          decoration: TextDecoration.underline,
                          color: ColorConstant.land),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(child: ProductTabBar())
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
