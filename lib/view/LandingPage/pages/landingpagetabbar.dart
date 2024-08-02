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
  final products = [
    {'image': 'assets/f3.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
    {'image': 'assets/f2.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
    {'image': 'assets/f1.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
    {'image': 'assets/f3.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
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
                      .copyWith(fontWeight: FontWeight.bold),
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
              height: displayHeight(context) * 0.01,
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
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: displayHeight(context) * 0.01,
            ),
            SizedBox(
              height: displayHeight(context) * 0.2,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.8,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    height: displayHeight(context) * 0.01,
                    width: displayWidth(context) * 0.02,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.grey,
                          blurRadius: 2.0,
                          spreadRadius: 1.0,
                          offset: Offset(2, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstant.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(product['image']!, fit: BoxFit.cover),
                        SizedBox(height: 8.0),
                        Text(
                          '${product['title']}\n${product['price']}',
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
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
