// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:easypay/view/AdminProfile/Homepapge/dashhomepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<SliderDrawerState> _sliderDrawerKey =
      GlobalKey<SliderDrawerState>();
  late String title;

  @override
  void initState() {
    title = "Dashboard";
    super.initState();
  }

  // int _selectedIndex = 0;
  // static TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderDrawer(
          appBar: SliderAppBar(
              appBarColor: ColorConstant.land,
              title: Text(title,
                  style: TextStyle(
                      color: ColorConstant.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700))),
          key: _sliderDrawerKey,
          sliderOpenSize: 182,
          slider: _SliderView(
            onItemClick: (title) {
              _sliderDrawerKey.currentState!.closeSlider();
              setState(() {
                this.title = title;
              });
            },
          ),
          child: _AuthorList()),
    );
  }
}

class _SliderView extends StatelessWidget {
  final Function(String)? onItemClick;

  const _SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 0),
      child: ListView(
        children: <Widget>[
          // SizedBox(
          //   height: 30,
          // ),
          Column(children: [
            Container(
              height: 250,
              width: displayWidth(context),
              color: ColorConstant.land,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: Image.network(
                              'https://nikhilvadoliya.github.io/assets/images/nikhil_1.webp')
                          .image,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Super User',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            )
          ]),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          ...[
            ExpansionTile(
                title: Text(
                  'Hotel Management',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                children: [
                  ListTile(
                    title: Text(
                      'Banners',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 0,
                    onTap: () {
                      Navigator.pushNamed(context, '/bannerpage');
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Categories ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 0,
                    onTap: () {
                      Navigator.pushNamed(context, '/categorypage');
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Add Products',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 0,
                    onTap: () {
                      Navigator.pushNamed(context, '/addproductpage');
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Electronics ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 0,
                    onTap: () {
                      Navigator.pushNamed(context, '/electronicspage');
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Furnitures',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 0,
                    onTap: () {
                      Navigator.pushNamed(context, '/furniturespage');
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Enquiriers ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 0,
                    onTap: () {
                      Navigator.pushNamed(context, '/electronicspage');
                    },
                  ),
                ]),
            ExpansionTile(
                title: Text(
                  'User Management',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                children: [
                  ListTile(
                    title: const Text(
                      'Members',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 0,
                    onTap: () {
                      Navigator.pushNamed(context, '/memberpage');
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Employees ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 0,
                    onTap: () {
                      Navigator.pushNamed(context, '/employeepage');
                    },
                  ),
                ]),
            ExpansionTile(
                title: Text(
                  'Master',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                children: [
                  ListTile(
                    title: const Text(
                      'Roles',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 2,
                    onTap: () {
                      Navigator.pushNamed(context, '/rolespage');
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Employee Roles',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 2,
                    onTap: () {
                      Navigator.pushNamed(context, '/employeerolespage');
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Branches',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 2,
                    onTap: () {
                      Navigator.pushNamed(context, '/branchespage');
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Series',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 2,
                    onTap: () {
                      Navigator.pushNamed(context, '/seriespage');
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Mail SMS Service',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 2,
                    onTap: () {
                      Navigator.pushNamed(context, '/mailsmsservicepage');
                    },
                  ),
                ]),
            ExpansionTile(
                title: Text(
                  'Loan Plans',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                children: [
                  ListTile(
                    title: const Text('Emi Plans Of Customer'),
                    // selected: _selectedIndex == 3,
                    onTap: () {
                      // _onItemTapped(3);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Emi Colleccted Till Date',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 3,
                    onTap: () {
                      // _onItemTapped(3);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Loan Calculator',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 3,
                    onTap: () {
                      Navigator.pushNamed(context, '/loancalculatorpage');
                    },
                  ),
                ]),
            ExpansionTile(
                title: Text(
                  'Banking',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                children: [
                  ListTile(
                    title: const Text(
                      'Deposit',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 4,
                    onTap: () {
                      // _onItemTapped(4);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Withdrawn',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 4,
                    onTap: () {
                      // _onItemTapped(4);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text(
                      'Transaction',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // selected: _selectedIndex == 4,
                    onTap: () {
                      // _onItemTapped(4);
                      Navigator.pop(context);
                    },
                  ),
                ]),
            ExpansionTile(
                title: Text(
                  'Geo Tracker',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                children: [
                  ListTile(
                    title: const Text('Visit History'),
                    // selected: _selectedIndex == 5,
                    onTap: () {
                      // _onItemTapped(5);
                      Navigator.pop(context);
                    },
                  ),
                ]),
            ExpansionTile(
              title: Text(
                'Profile Settings',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                ),
              ),
              children: [
                ListTile(
                  title: Text(
                    'User Profile',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  // selected: _selectedIndex == 7,
                  onTap: () {
                    Navigator.pushNamed(context, '/memberprofilepage');
                  },
                ),
                ListTile(
                  title: Text(
                    'Company Profile',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  // selected: _selectedIndex == 7,
                  onTap: () {
                    Navigator.pushNamed(context, '/memberprofilepage');
                  },
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }
}

class _AuthorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DashHomePage();
  }
}
