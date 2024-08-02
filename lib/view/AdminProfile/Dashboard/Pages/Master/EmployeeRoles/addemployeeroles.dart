// ignore_for_file: prefer_const_constructors, file_names, avoid_unnecessary_containers

import 'package:easypay/components/imagepicker.dart';
import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:flutter/material.dart';

class AddEmployeeData extends StatefulWidget {
  const AddEmployeeData({super.key});

  @override
  State<AddEmployeeData> createState() => _AddEmployeeDataState();
}

class _AddEmployeeDataState extends State<AddEmployeeData> {
  TextEditingController bannerctrl = TextEditingController();

  String? banner;
  int? bannernumber;

  var items = [
    "Top of the Page",
    "Store",
    "Product Detail",
    "Banner Left",
    "Banner Right",
    "Contact Page",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add Image',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(
                  height: displayHeight(context) * 0.015,
                ),
                Container(
                  height: displayHeight(context) * 0.2,
                  width: displayWidth(context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorConstant.white,
                      border: Border.all(color: ColorConstant.grey)),
                  child: IconButton(
                      onPressed: () {
                        ImagePickerTemplate();
                      },
                      icon: Icon(Icons.camera)),
                ),
                TextFormField(
                  readOnly: true,
                  onSaved: (input) => banner = input,
                  controller: bannerctrl,
                  decoration: InputDecoration(
                    labelStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    suffixIcon: PopupMenuButton<String>(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: ColorConstant.grey,
                      ),
                      onSelected: (String value) {
                        setState(() {
                          bannerctrl.text = value;
                          if (value == "Top of the Page") {
                            bannernumber = 1;
                          } else if (value == "Store") {
                            bannernumber = 2;
                          } else if (value == "Product Detail") {
                            bannernumber = 3;
                          } else if (value == "Banner Left") {
                            bannernumber = 4;
                          } else if (value == "Banner Right") {
                            bannernumber = 5;
                          } else if (value == "Contact Page") {
                            bannernumber = 6;
                          } else {
                            bannernumber = 0;
                          }
                        });
                      },
                      itemBuilder: (BuildContext context) {
                        return items.map<PopupMenuItem<String>>((String value) {
                          return PopupMenuItem(
                              value: value, child: Text(value));
                        }).toList();
                      },
                    ),
                    fillColor: Colors.grey.shade300,
                    // filled: true,
                    labelText: 'Banner Position',

                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) return 'banner';
                    return null;
                  },
                ),
                Container(
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 24,
                    fontFamily: 'Montserrat',

                      color: ColorConstant.primary,
                      fontWeight: FontWeight.w600,
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      focusColor: ColorConstant.white,
                      prefixIcon: Icon(
                        Icons.text_fields,
                        color: ColorConstant.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorConstant.primary, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: ColorConstant.grey,
                      hintText: "Your Title",
                      hintStyle: TextStyle(
                        color: ColorConstant.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                      labelText: 'Your Title',
                      labelStyle: TextStyle(
                    fontFamily: 'Montserrat',

                        color: ColorConstant.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: displayHeight(context) * 0.02,
                ),
                Container(
                  child: TextFormField(
                    style: TextStyle(
                    fontFamily: 'Montserrat',

                      fontSize: 24,
                      color: ColorConstant.primary,
                      fontWeight: FontWeight.w600,
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      focusColor: ColorConstant.white,
                      prefixIcon: Icon(
                        Icons.text_fields,
                        color: ColorConstant.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorConstant.primary, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: ColorConstant.grey,
                      hintText: "Sub Title",
                      hintStyle: TextStyle(
                    fontFamily: 'Montserrat',
                        
                        color: ColorConstant.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                      labelText: 'Sub Title',
                      labelStyle: TextStyle(
                    fontFamily: 'Montserrat',

                        color: ColorConstant.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: displayHeight(context) * 0.02,
                ),
                Center(
                  child: SizedBox(
                    height: displayHeight(context) * 0.06,
                    width: displayWidth(context) * 0.2,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Save'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
