// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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

  Widget buildProductCard(String imagePath, String title, String price) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8.0,
            spreadRadius: 1.0,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
        color: ColorConstant.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imagePath,
              height: displayHeight(context) * 0.2,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: 4),
                Text(
                  price,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: ColorConstant.land,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          TabBar(
            labelColor: ColorConstant.land,
            unselectedLabelColor: Colors.black,
            indicatorColor: ColorConstant.land,
            controller: _tabController,
            tabs: const <Widget>[
              Tab(text: 'All'),
              Tab(text: 'Airpods'),
              Tab(text: 'TVs'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                _buildTabContent([
                  {
                    'image': 'assets/earphone.jpg',
                    'title': 'Samsung TV',
                    'price': 'Rs.22000'
                  },
                  {
                    'image': 'assets/ff.jpg',
                    'title': 'Sony Headphones',
                    'price': 'Rs.7000'
                  },
                  {
                    'image': 'assets/ww.jpg',
                    'title': 'LG Smart TV',
                    'price': 'Rs.25000'
                  },
                  {
                    'image': 'assets/earphone.jpg',
                    'title': 'Apple Airpods',
                    'price': 'Rs.15000'
                  },
                ]),
                _buildTabContent([
                  {
                    'image': 'assets/earphone.jpg',
                    'title': 'Apple Airpods',
                    'price': 'Rs.15000'
                  },
                  {
                    'image': 'assets/ff.jpg',
                    'title': 'Sony Headphones',
                    'price': 'Rs.7000'
                  },
                ]),
                _buildTabContent([
                  {
                    'image': 'assets/tv.jpg',
                    'title': 'Samsung TV',
                    'price': 'Rs.22000'
                  },
                  {
                    'image': 'assets/ww.jpg',
                    'title': 'LG Smart TV',
                    'price': 'Rs.25000'
                  },
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent(List<Map<String, String>> products) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 9.0,
        childAspectRatio: 0.65,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return buildProductCard(
            product['image']!, product['title']!, product['price']!);
      },
    );
  }
}
