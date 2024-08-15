// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/view/SuperUser/Dashboard/Pages/DashboardPage/menuslider.dart';
import 'package:easypay/view/common/LandingPage/pages/landing%20furniture.dart';
import 'package:easypay/view/common/LandingPage/pages/landingelectronics.dart';
import 'package:easypay/view/common/LandingPage/pages/landingpage.dart';
import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    Landingpage(),
    LandingElectronics(),
    LandingFurniture(),
    Dashboard(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        backgroundColor: ColorConstant.land,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: ColorConstant.land,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Electronics',
            backgroundColor: ColorConstant.land,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Furniture',
            backgroundColor: ColorConstant.land,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Dashboard',
            backgroundColor: ColorConstant.land,
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorConstant.white,
        onTap: _onItemTapped,
        // type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
