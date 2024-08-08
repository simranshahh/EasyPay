// ignore_for_file: prefer_const_constructors, sort_child_properties_last, duplicate_ignore

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:flutter/material.dart';

class Editmemberseries extends StatefulWidget {
  const Editmemberseries({super.key});

  @override
  State<Editmemberseries> createState() => _EditmemberseriesState();
}

class _EditmemberseriesState extends State<Editmemberseries> {
  bool toggleValue = false;

  // TODO Create Toggle Button Function
  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                  'Edit Employee Series',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                  ),
                  // style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  //     color: ColorConstant.black,
                  //     fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: displayHeight(context) * 0.045,
                ),
                Row(
                  children: [
                    Text('Employee Prefix',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontFamily: 'Montserrat',
                            )),

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
                                color: ColorConstant.primary, width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          fillColor: ColorConstant.grey,
                          // hintText: "Your Title",
                          hintStyle: TextStyle(
                            color: ColorConstant.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          // labelText: 'Your Title',
                          // labelStyle: TextStyle(
                          //   color: ColorConstant.grey,
                          //   fontSize: 12,
                          //   fontWeight: FontWeight.w400,
                          // ),
                        ),
                      ),
                    ),
                    // TextFormField()
                  ],
                ),
                SizedBox(
                  height: displayHeight(context) * 0.045,
                ),
                Row(
                  children: [
                    Text(
                      'Employee Series',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
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
                                color: ColorConstant.primary, width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          fillColor: ColorConstant.grey,
                          // hintText: "Your Title",
                          hintStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            color: ColorConstant.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          // labelText: 'Your Title',
                          // labelStyle: TextStyle(
                          //   color: ColorConstant.grey,
                          //   fontSize: 12,
                          //   fontWeight: FontWeight.w400,
                          // ),
                        ),
                      ),
                    ),
                    // TextFormField()
                  ],
                ),
                SizedBox(
                  height: displayHeight(context) * 0.045,
                ),
                Row(
                  children: [
                    Text(
                      'Include Branch code',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
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
                        // ignore: prefer_const_constructors
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
                            //TODO Rotation_Animation
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
                                    // for scale transition
                                    //return ScaleTransition(child: child, scale: animation);
                                  },
                                  // what to toggle is defined below
                                  child: toggleValue
                                      ? Icon(
                                          Icons.check_circle_outline,
                                          color: Colors.green,
                                          size: 25.0,
                                          // key used to tell the switcher that
                                          // these are two separate widget(Icon())
                                          key: UniqueKey(),
                                        )
                                      : Icon(
                                          Icons.remove_circle_outline,
                                          color: Colors.red,
                                          size: 25.0,
                                          // key used to tell the switcher that
                                          // these are two separate widget(Icon())
                                          key: UniqueKey(),
                                        ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
