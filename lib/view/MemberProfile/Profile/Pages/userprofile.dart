// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, avoid_unnecessary_containers, unused_field, deprecated_member_use

import 'package:easypay/components/textformfield.dart';
import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  TextEditingController genderctrl = TextEditingController();
  String? fullname;
  String? email;
  String? contact;
  String? password;
  String? confirmpassword;
  String? dob;
  String? gender;
  int? genderId;

  int? gendernumber;

  var items = [
    "Male",
    "Female",
    "other",
  ];
  final ImagePicker _picker = ImagePicker();
  XFile? _image;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primary,
        body: Stack(children: [
          Container(
            color: ColorConstant.land,
            // child: Image.asset(
            //   'assets/loginimg.png',
            //   scale: 0.01,
            // ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/memberprofilepage');
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-_LdfKGBN5WKAj3hJ9ijYvhROSOe5dBms6ffJz7ckNgKVnmYBtlkASIx9gCchnXQaVBo&usqp=CAU'),
                                radius: 55,
                              ),
                              SizedBox(
                                height: displayHeight(context) * 0.015,
                              ),
                              Text('Simran Sah',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: ColorConstant.primarydark,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                      )),
                              Text('user2@gmail.com',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        color: ColorConstant.grey,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Montserrat',
                                      )),
                              SizedBox(
                                height: displayHeight(context) * 0.02,
                              ),
                              SizedBox(
                                width: 140,
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
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 278.0),
            child: Container(
              height: 1,
              width: displayWidth(context),
              color: ColorConstant.grey,
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(185, 145, 0, 0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 252, 247, 247)),
                child: Center(
                    child: IconButton(
                        onPressed: () {
                          getImage();
                        },
                        icon: Icon(Icons.camera))),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 278.0, left: 15, right: 15),
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.edit),
                        fillColor: Colors.grey.shade300,
                        // filled: true,
                        labelText: 'Your Email',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) return 'Your email';
                        return null;
                      },
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.001,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.edit),
                        fillColor: Colors.grey.shade300,
                        // filled: true,
                        labelText: 'Your Phone Number',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) return 'Your Phone Number';
                        return null;
                      },
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.001,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.edit),
                        fillColor: Colors.grey.shade300,
                        // filled: true,
                        labelText: 'Your Address',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) return 'Your Address';
                        return null;
                      },
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.001,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.edit),
                        fillColor: Colors.grey.shade300,
                        // filled: true,
                        labelText: 'Your Location',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) return 'Your State';
                        return null;
                      },
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.001,
                    ),
                    TextFormField(
                      readOnly: true,
                      onSaved: (input) => gender = input,
                      controller: genderctrl,
                      decoration: InputDecoration(
                        suffixIcon: PopupMenuButton<String>(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: ColorConstant.grey,
                          ),
                          onSelected: (String value) {
                            setState(() {
                              genderctrl.text = value;
                              if (value == "Male") {
                                gendernumber = 1;
                              } else if (value == "Female") {
                                gendernumber = 2;
                              } else {
                                gendernumber = 0;
                              }
                            });
                          },
                          itemBuilder: (BuildContext context) {
                            return items
                                .map<PopupMenuItem<String>>((String value) {
                              return PopupMenuItem(
                                  value: value, child: Text(value));
                            }).toList();
                          },
                        ),
                        fillColor: Colors.grey.shade300,
                        // filled: true,
                        labelText: 'Gender',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) return 'Gender';
                        return null;
                      },
                    ),
                    // TextFormField(
                    //     readOnly: true,
                    //     // style: Theme.of(context)
                    //     //     .textTheme
                    //     //     .bodyMedium!
                    //     //     .copyWith(fontWeight: FontWeight.w400),
                    //     onSaved: (input) => gender = input,
                    //     controller: genderctrl,
                    //     decoration: InputDecoration(
                    //       hintText: 'Gender',
                    //       suffixIcon: PopupMenuButton<String>(
                    //         icon: const Icon(
                    //           Icons.arrow_drop_down,
                    //           color: ColorConstant.grey,
                    //         ),
                    //         onSelected: (String value) {
                    //           setState(() {
                    //             genderctrl.text = value;
                    //             if (value == "Male") {
                    //               gendernumber = 1;
                    //             } else if (value == "Female") {
                    //               gendernumber = 2;
                    //             } else {
                    //               gendernumber = 0;
                    //             }
                    //           });
                    //         },
                    //         itemBuilder: (BuildContext context) {
                    //           return items
                    //               .map<PopupMenuItem<String>>((String value) {
                    //             return PopupMenuItem(
                    //                 value: value, child: Text(value));
                    //           }).toList();
                    //         },
                    //       ),
                    //     )),
                    SizedBox(
                      height: displayHeight(context) * 0.015,
                    ),
                    SizedBox(
                      width: 90,
                      height: 40,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              ColorConstant.land),
                        ),
                        onPressed: () {},
                        child: Text('Save'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Future getImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }
}
