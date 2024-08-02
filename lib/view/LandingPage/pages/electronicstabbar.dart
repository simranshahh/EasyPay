// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:flutter/material.dart';

class ProductTabBar extends StatefulWidget {
  const ProductTabBar({super.key});

  @override
  State<ProductTabBar> createState() => _ProductTabBarState();
}

class _ProductTabBarState extends State<ProductTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: <Widget>[
          TabBar(
            labelColor: ColorConstant.land,
            indicatorColor: ColorConstant.grey,
            controller: _tabController,
            tabs: const <Widget>[
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Airpods',
              ),
              Tab(
                text: 'TVs',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
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
                                Image.asset('assets/tv.jpg'),
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
                                Image.asset('assets/ff.jpg'),
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
                                Image.asset('assets/ww.jpg'),
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
                                Image.asset('assets/earphone.jpg'),
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
                                Image.asset('assets/tv.jpg'),
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
                                Image.asset('assets/ff.jpg'),
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
                                Image.asset('assets/ww.jpg'),
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
                                Image.asset('assets/earphone.jpg'),
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

                //TVS section from here
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
                                Image.asset('assets/tv.jpg'),
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
                                Image.asset('assets/ff.jpg'),
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
                                Image.asset('assets/ww.jpg'),
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
                                Image.asset('assets/earphone.jpg'),
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
        ],
      ),
    );
  }
}
