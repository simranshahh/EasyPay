// ignore_for_file: prefer_const_constructors, file_names, avoid_unnecessary_containers, sort_child_properties_last

import 'package:easypay/components/imagepicker.dart';
import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:easypay/view/SuperUser/Dashboard/Pages/Master/Series/editmemberseries/editmemberseries.dart';
import 'package:flutter/material.dart';

class AddSeriesData extends StatefulWidget {
  const AddSeriesData({super.key});

  @override
  State<AddSeriesData> createState() => _AddSeriesDataState();
}

class _AddSeriesDataState extends State<AddSeriesData> {
  TextEditingController bannerctrl = TextEditingController();
  bool toggleValue = false;

  //TODO Create Toggle Button Function
  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    height: displayHeight(context) * 0.4,
                    decoration: BoxDecoration(
                        color: ColorConstant.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: ColorConstant.grey)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Edit Member Series',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        SizedBox(
                          height: displayHeight(context) * 0.045,
                        ),
                        Row(
                          children: [
                            Text(
                              'Member Prefix',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontFamily: 'Montserrat',
                                  ),
                            ),
                            SizedBox(
                              width: displayWidth(context) * 0.3,
                            ),
                            SizedBox(
                              height: 40,
                              width: 100,
                              child: TextFormField(
                                style: TextStyle(
                                  fontSize: 12,
                                  color: ColorConstant.primary,
                                  fontFamily: 'Montserrat',
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
                                        color: ColorConstant.primary,
                                        width: 1.0),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  fillColor: ColorConstant.grey,
                                  hintStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: ColorConstant.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: displayHeight(context) * 0.045,
                        ),
                        Row(
                          children: [
                            Text(
                              'Member Series',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontFamily: 'Montserrat',
                                  ),
                            ),
                            SizedBox(
                              width: displayWidth(context) * 0.3,
                            ),
                            SizedBox(
                              height: 40,
                              width: 100,
                              child: TextFormField(
                                style: TextStyle(
                                  fontSize: 12,
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
                                        color: ColorConstant.primary,
                                        width: 1.0),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  fillColor: ColorConstant.grey,
                                  hintStyle: TextStyle(
                                    color: ColorConstant.grey,
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: displayHeight(context) * 0.045,
                        ),
                        Row(
                          children: [
                            Text(
                              'Include Branch code',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontFamily: 'Montserrat',
                                  ),
                            ),

                            SizedBox(
                              width: displayWidth(context) * 0.23,
                            ),
                            SizedBox(
                              height: 35,
                              width: 80,
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                height: 35.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: toggleValue
                                      ? Colors.greenAccent[200]
                                      : Colors.redAccent[200]?.withOpacity(0.4),
                                ),
                                child: Stack(
                                  children: [
                                    AnimatedPositioned(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.easeIn,
                                      left: toggleValue ? 40.0 : 0.0,
                                      right: toggleValue ? 0.0 : 40.0,
                                      top: 4.0,
                                      child: InkWell(
                                        onTap: toggleButton,
                                        child: AnimatedSwitcher(
                                          duration: Duration(milliseconds: 500),
                                          transitionBuilder: (Widget child,
                                              Animation<double> animation) {
                                            return RotationTransition(
                                                child: child, turns: animation);
                                          },
                                          child: toggleValue
                                              ? Icon(
                                                  Icons.check_circle_outline,
                                                  color: Colors.green,
                                                  size: 25.0,
                                                  key: UniqueKey(),
                                                )
                                              : Icon(
                                                  Icons.remove_circle_outline,
                                                  color: Colors.red,
                                                  size: 25.0,
                                                  key: UniqueKey(),
                                                ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // TextFormField()
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 300.0),
                    child: SizedBox(height: 300, child: Editmemberseries()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 600.0),
                    child: SizedBox(height: 300, child: Editmemberseries()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 58.0),
                    child: Container(
                      height: displayHeight(context) * 0.001,
                      color: ColorConstant.grey,
                    ),
                  )
                ]),
                SizedBox(
                  height: displayHeight(context) * 0.5,
                ),
                Text(
                  'Add Image',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                        color: ColorConstant.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                      labelText: 'Sub Title',
                      labelStyle: TextStyle(
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
