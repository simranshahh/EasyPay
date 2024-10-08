// ignore_for_file: prefer_const_constructors

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:easypay/view/SuperUser/Homepapge/dashhomepage.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderDrawer(
        appBar: SliderAppBar(
          appBarColor: ColorConstant.land,
          title: Text(
            title,
            style: TextStyle(
              color: ColorConstant.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          // Custom menu icon button
          drawerIcon: IconButton(
            icon: Icon(
              Icons.menu,
              color: ColorConstant.white, // Set the color to white
            ),
            onPressed: () {
              _sliderDrawerKey.currentState!.openSlider();
            },
          ),
        ),
        key: _sliderDrawerKey,
        sliderOpenSize: 250,
        slider: _SliderView(
          onItemClick: (title) {
            _sliderDrawerKey.currentState!.closeSlider();
            setState(() {
              this.title = title;
            });
          },
        ),
        child: _AuthorList(),
      ),
    );
  }
}

class _SliderView extends StatelessWidget {
  final Function(String)? onItemClick;

  const _SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.land.withOpacity(0.1),
      child: ListView(
        children: <Widget>[
          Column(
            children: [
              Container(
                height: displayHeight(context) * 0.3,
                width: displayWidth(context),
                color: ColorConstant.land,
                child: Column(
                  children: [
                    SizedBox(
                      height: displayHeight(context) * 0.04,
                    ),
                    CircleAvatar(
                      radius: 65,
                      backgroundColor: ColorConstant.white,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                          'https://nikhilvadoliya.github.io/assets/images/nikhil_1.webp',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.015,
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
              ),
            ],
          ),
          SizedBox(
            height: displayHeight(context) * 0.01,
          ),
          ...[
            _buildExpansionTile(
              context,
              title: 'Hotel Management',
              items: [
                _buildListTile(context, 'Banners', '/bannerpage'),
                _buildListTile(context, 'Categories', '/categorypage'),
                _buildListTile(context, 'Add Products', '/addproductpage'),
                _buildListTile(context, 'Electronics', '/electronicspage'),
                _buildListTile(context, 'Furnitures', '/furniturespage'),
                _buildListTile(context, 'Enquiries', '/enquiriespage'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'User Management',
              items: [
                _buildListTile(context, 'Members', '/memberpage'),
                _buildListTile(context, 'Employees', '/employeepage'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'Master',
              items: [
                _buildListTile(context, 'Roles', '/rolespage'),
                _buildListTile(context, 'Employee Roles', '/employeerolespage'),
                _buildListTile(context, 'Branches', '/branchespage'),
                _buildListTile(context, 'Series', '/seriespage'),
                _buildListTile(
                    context, 'Mail SMS Service', '/mailsmsservicepage'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'Loan Plans',
              items: [
                _buildListTile(
                    context, 'Emi Plans Of Customer', '/emiplansofcustomer'),
                _buildListTile(
                    context, 'Emi Collected Till Date', '/emicollectedpage'),
                _buildListTile(
                    context, 'Loan Calculator', '/loancalculatorpage'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'Banking',
              items: [
                _buildListTile(context, 'Deposit', '/depositpage'),
                _buildListTile(context, 'Withdrawn', '/withdrawnpage'),
                _buildListTile(context, 'Transaction', '/transactionpage'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'Geo Tracker',
              items: [
                _buildListTile(context, 'Visit History', '/visithistorypage'),
              ],
            ),
            _buildExpansionTile(
              context,
              title: 'Profile Settings',
              items: [
                _buildListTile(context, 'User Profile', '/memberprofilepage'),
                _buildListTile(
                    context, 'Company Profile', '/companyprofilepage'),
              ],
            ),
          ]
        ],
      ),
    );
  }

  Widget _buildExpansionTile(BuildContext context,
      {required String title, required List<Widget> items}) {
    return ExpansionTile(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          fontSize: 18,
          // color: Colors.white,
        ),
      ),
      children: items,
    );
  }

  Widget _buildListTile(BuildContext context, String title, String route) {
    return ListTile(
      leading: Icon(
        Icons.arrow_forward_ios,
        size: 14,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16,
          // color: Colors.white,
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}

class _AuthorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DashHomePage();
  }
}
