// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatefulWidget {
  const TopCategories({super.key});

  @override
  State<TopCategories> createState() => _TopCategoriesState();
}

class _TopCategoriesState extends State<TopCategories> {
  final products = [
    {'image': 'assets/f4.png', 'title': 'Sofa'},
    {'image': 'assets/f5.png', 'title': 'Bed'},
    {'image': 'assets/table.png', 'title': 'Chair'},
    {'image': 'assets/f4.png', 'title': 'Sofa'},
    {'image': 'assets/f5.png', 'title': 'Sofa'},
    {'image': 'assets/f3.jpg', 'title': 'Bed'},
    {'image': 'assets/f4.png', 'title': 'Sofa'},
    {'image': 'assets/f5.png', 'title': 'Bed'},
    {'image': 'assets/table.png', 'title': 'Chair'},
    {'image': 'assets/f4.png', 'title': 'Sofa'},
    {'image': 'assets/f5.png', 'title': 'Sofa'},
    {'image': 'assets/f3.jpg', 'title': 'Bed'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 195.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: displayHeight(context) * 0.15,
            ),
            SizedBox(
              height: displayHeight(context) * 0.25,
              width: displayWidth(context),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(25),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: displayWidth(context) * 0.21,
                    decoration: BoxDecoration(
                      color: ColorConstant.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: displayHeight(context) * 0.1,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1,
                                  spreadRadius: 0.1,
                                  blurStyle: BlurStyle.solid,
                                  color: ColorConstant.grey.withOpacity(0.1))
                            ],
                            border:
                                Border.all(color: Colors.grey.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.white,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              product['image']!,
                              fit: BoxFit.fitHeight,
                              width: double.infinity,
                              height: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          product['title']!,
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
