// ignore_for_file: prefer_const_constructors, file_names, unused_import, prefer_const_literals_to_create_immutables

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:easypay/view/common/LandingPage/pages/furnituretabbar.dart';
import 'package:flutter/material.dart';

class LandingFurniture extends StatelessWidget {
  const LandingFurniture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: ColorConstant.land,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Furniture Items",
            style: TextStyle(color: ColorConstant.white),
          ),
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
                  image: AssetImage('assets/baner.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3),
                    BlendMode.darken,
                  ),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                'Exclusive Furniture\nUp to 50% Off!',
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

            SizedBox(height: 10),

            // Furniture Tab Bar
            Expanded(child: FurnitureTabBar()),
          ],
        ),
      ),
    );
  }
}

final controller = ScrollController();
