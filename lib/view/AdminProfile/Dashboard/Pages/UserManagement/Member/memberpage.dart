// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';

import 'package:easypay/view/AdminProfile/Dashboard/Pages/UserManagement/Member/addmember.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/UserManagement/Member/membertable.dart';
import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  MemberPage({super.key});
  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primary,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: setHeight(280, context),
              ),
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: setHeight(20, context),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: displayHeight(context) * 0.03,
                      ),
                      child: Row(
                        children: [
                          // Image.asset('assets/google.png'),
                          SizedBox(
                            width: 4,
                          ),
                          Text('Categories',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                      color: ColorConstant.white,
                                      fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                                      
                                      )),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/dashboard');
                            },
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/settings.png'),
                            ),
                          ),
                          SizedBox(
                            width: displayWidth(context) * 0.03,
                          ),
                          InkWell(
                            child: Container(
                              width: displayWidth(context) * 0.12,
                              height: displayHeight(context) * 0.08,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffE0EAF5),
                              ),
                              child: const Icon(
                                Icons.notification_important,
                                color: Color(0xff5889c7),
                              ),
                            ),
                            onTap: () {
                              // Navigator.pushNamed(context, '/notificationpage');
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: setHeight(40, context),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        height: 52,
                        width: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            color: ColorConstant.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: TabBar(
                                unselectedLabelColor: ColorConstant.black,
                                labelColor: ColorConstant.white,
                                indicatorColor: ColorConstant.primarydark,
                                indicatorWeight: 2,
                                indicator: BoxDecoration(
                                  color: ColorConstant.primarydark,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                controller: _tabController,
                                tabs: [
                                  Tab(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage:
                                              AssetImage('assets/eye.png'),
                                          backgroundColor: ColorConstant.white,
                                        ),
                                        SizedBox(width: 13.18),
                                        Text(
                                          'View Data',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundImage:
                                            AssetImage('assets/plus.png'),
                                        backgroundColor: ColorConstant.white,
                                      ),
                                      SizedBox(width: 13.18),
                                      Text(
                                        'Add Data',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
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
                    ),
                    SizedBox(
                      height: setHeight(20, context),
                    ),
                    // Image.asset('assets/mail.png'),
                    SizedBox(
                      height: setHeight(20, context),
                    ),
                    // DataTableExample(),

                    SizedBox(
                      height: displayHeight(
                          context), // Specify a height for the TabBarView
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          MemberTable(),
                          AddMemberData(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
