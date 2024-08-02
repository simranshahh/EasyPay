// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, deprecated_member_use

import 'dart:io';

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:easypay/view/MemberProfile/Profile/Pages/profilemenu.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MemberProfilePage extends StatefulWidget {
  const MemberProfilePage({super.key});

  @override
  State<MemberProfilePage> createState() => _MemberProfilePageState();
}

class _MemberProfilePageState extends State<MemberProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primary,
        body: Stack(children: [
          Container(
            color: ColorConstant.land,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/dashboard');
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: ColorConstant.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 118.0),
            child: Container(
              height: displayHeight(context),
              decoration: BoxDecoration(
                  color: ColorConstant.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-_LdfKGBN5WKAj3hJ9ijYvhROSOe5dBms6ffJz7ckNgKVnmYBtlkASIx9gCchnXQaVBo&usqp=CAU'),
                          radius: 55,
                        ),
                        Text('Member Users',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: ColorConstant.primarydark,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat',
                                )),
                        Text('user2@gmail.com',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: ColorConstant.grey,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Montserrat',
                                    )),
                        SizedBox(
                          height: displayHeight(context) * 0.02,
                        ),
                        SizedBox(
                          width: 130,
                          height: 40,
                          child: TextButton(
                            onPressed: () {
                              // Navigator.pushNamed(
                              //     context, '/editprofile');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorConstant.land,
                              side: BorderSide.none,
                              shape: const StadiumBorder(),
                            ),
                            child: Text('Get Location',
                                textScaleFactor: 1,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: ColorConstant.white,
                                      fontFamily: 'Montserrat',
                                    )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 268.0),
            child: Container(
              height: 1,
              width: displayWidth(context),
              color: ColorConstant.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 278.0, left: 15, right: 15),
            child: Expanded(
              child: Column(
                children: [
                  ProfileMenu(
                    text: "Your Emi Plans",
                    icon: Icons.message,
                    press: () {
                      Navigator.pushNamed(context, '/emiplanspage');
                    },
                  ),
                  ProfileMenu(
                    text: "Account Information",
                    icon: Icons.account_box,
                    press: () {
                      Navigator.pushNamed(context, '/accountinformationpage');
                    },
                  ),
                  ProfileMenu(
                    text: "User Profile",
                    icon: Icons.man,
                    press: () {
                      Navigator.pushNamed(context, '/userprofile');
                    },
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
