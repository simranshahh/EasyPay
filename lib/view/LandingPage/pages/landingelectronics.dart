// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
        appBar: AppBar(
          backgroundColor: ColorConstant.land,
          title: Text(
            'Electronics Items',
            style: TextStyle(color: ColorConstant.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              // Search and Filter Row
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
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
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorConstant.land,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_list,
                        color: ColorConstant.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Banner Section
              Container(
                width: double.infinity,
                height: displayHeight(context) * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(4, 4),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/banner.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3),
                      BlendMode.darken,
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Summer Sale\nUp to 50% Off!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 6,
                        color: Colors.black26,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Categories Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See All',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            decoration: TextDecoration.underline,
                            color: ColorConstant.land,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),

              Expanded(child: ProductTabBar()),
            ],
          ),
        ),
      ),
    );
  }
}
