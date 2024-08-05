// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, unused_element, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:easypay/routes/myrouters.dart';
import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/view/AdminProfile/Dashboard/Pages/DashboardPage/dashboard.dart';
import 'package:easypay/view/common/Auth/Login/Bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return BlocProvider(
      create: (context) => LoginBloc(),
      // create: (context) => LoginBloc(),
      child: MaterialApp(
        onGenerateRoute: MyRoutes.generatedRoutes,
        initialRoute: '/splash',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _submenuExpanded = false;

  void _navigateToPage(String route) {
    setState(() {
      _submenuExpanded = false;
    });
    Navigator.of(context).pop();
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => Dashboard()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer with Submenus'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: ColorConstant.primary,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: ColorConstant.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              //  onTap: () => _navigateToPage('Home'),
            ),
            ExpansionTile(
              title: Text('Submenu'),
              children: <Widget>[
                ListTile(
                  title: Text('Page 1'),
                  //  onTap: () => _navigateToPage('Page 1'),
                ),
                ListTile(
                  title: Text('Page 2'),
                  // onTap: () => _navigateToPage('Page 2'),
                ),
              ],
              initiallyExpanded: _submenuExpanded,
              onExpansionChanged: (bool expanded) {
                setState(() {
                  _submenuExpanded = expanded;
                });
              },
            ),
            ListTile(
              title: Text('Settings'),
              // onTap: () => _navigateToPage('Settings'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
