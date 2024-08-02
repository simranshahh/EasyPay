// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:flutter/material.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    List<Useremitabbar> details = [
      Useremitabbar(
          Branch: 'Brt',
          Initialpayment: '500',
          Productname: 'pay',
          Sn: 'Sn',
          TotalCost: '1000'),
      Useremitabbar(
          Branch: '500',
          Initialpayment: '100',
          Productname: 'Pay',
          Sn: 'Sn',
          TotalCost: '800')
    ];
    return DefaultTabController(
      initialIndex: 1,
      length: details.length,
      child: Scaffold(
        appBar: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.today,
                color: ColorConstant.primary,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.upcoming,
                color: ColorConstant.primary,
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Expanded(
                child: ListView.builder(
                    itemCount: details.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: displayHeight(context) * 0.2,
                        decoration: BoxDecoration(
                            color: ColorConstant.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: ColorConstant.grey, blurRadius: 1)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(details[index].Sn),
                            Text(details[index].Branch),
                            Text(details[index].Initialpayment),
                            Text(details[index].Productname),
                            Text(details[index].TotalCost),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: displayHeight(context) * 0.2,
                      decoration: BoxDecoration(
                          color: ColorConstant.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(color: ColorConstant.grey, blurRadius: 1)
                          ]),
                    ),
                    SizedBox(
                      height: displayHeight(context) * 0.02,
                    ),
                    Container(
                      height: displayHeight(context) * 0.2,
                      decoration: BoxDecoration(
                          color: ColorConstant.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(color: ColorConstant.grey, blurRadius: 1)
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Useremitabbar {
  String Sn;
  String Branch;
  String Productname;
  String Initialpayment;
  String TotalCost;

  Useremitabbar(
      {required this.Branch,
      required this.Initialpayment,
      required this.Productname,
      required this.Sn,
      required this.TotalCost});
}
