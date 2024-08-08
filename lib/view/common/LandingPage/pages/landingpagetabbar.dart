// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/form_text_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:flutter/material.dart';

class Landingpagetabbar extends StatefulWidget {
  const Landingpagetabbar({super.key});

  @override
  State<Landingpagetabbar> createState() => _LandingpagetabbarState();
}

class _LandingpagetabbarState extends State<Landingpagetabbar> {
  final products = [
    {'image': 'assets/f2.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
    {'image': 'assets/f2.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
    {'image': 'assets/f1.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
    {'image': 'assets/f3.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
    {'image': 'assets/f3.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
    {'image': 'assets/f2.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
    {'image': 'assets/f1.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
    {'image': 'assets/f3.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
    {'image': 'assets/f3.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
    {'image': 'assets/f2.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
    {'image': 'assets/f1.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
    {'image': 'assets/f3.jpg', 'title': 'Samsung TV', 'price': 'Rs.22000'},
  ];
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 355.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: displayHeight(context) * 0.15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Trending Sales',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  'See All',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold, color: ColorConstant.land),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(15),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 0.8,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCard(
                  image: product['image']!,
                  title: product['title']!,
                  price: product['price']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatefulWidget {
  final String image;
  final String title;
  final String price;

  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '${widget.title}\n${widget.price}',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Positioned(
            top: 8.0,
            right: 8.0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isFavorited = !isFavorited;
                  _showDialog();
                });
              },
              child: Icon(
                isFavorited ? Icons.favorite : Icons.favorite_border,
                color: isFavorited ? Colors.red : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(isFavorited ? addtocart : removefromcart),
          content: Text(isFavorited ? addedtocart : removedfromcart),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class ProductCategories {
  Image image;

  ProductCategories({required this.image});
}
