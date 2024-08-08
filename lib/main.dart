// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, unused_element, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:easypay/routes/myrouters.dart';
import 'package:easypay/view/common/Auth/Login/Bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return BlocProvider(
      create: (context) => LoginBloc(),
      child: MaterialApp(
        onGenerateRoute: MyRoutes.generatedRoutes,
        initialRoute: '/splash',
      ),
    );
  }
}
