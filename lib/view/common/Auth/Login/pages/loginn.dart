// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, duplicate_ignore, unused_element, unused_import, deprecated_member_use

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:easypay/view/common/Auth/Login/Bloc/login_bloc.dart';
import 'package:easypay/view/common/Auth/Login/Bloc/login_event.dart';
import 'package:easypay/view/common/Auth/Login/Bloc/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 18),
          child: BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state is LoginFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.error),
                    backgroundColor: ColorConstant.red,
                  ),
                );
              } else if (state is LoginSuccess) {
                Navigator.pushReplacementNamed(context, '/dashboard');
              }
            },
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return Form(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Image.asset(
                          'assets/easypayy.jpg',
                          height: displayHeight(context) * 0.08,
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: Text(
                            "Welcome back, you've been missed!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: ColorConstant.grey,
                            ),
                          ),
                        ),
                        SizedBox(height: displayHeight(context) * 0.05),
                        TextFormField(
                            controller: _phonenumberController,
                            decoration: InputDecoration(
                              suffixIcon:
                                  Icon(Icons.mail, color: ColorConstant.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(color: ColorConstant.grey),
                            ),
                            validator: (value) {
                              String validateEmail(String? name) {
                                if (name!.isEmpty) {
                                  return 'Name must not be empty';
                                }
                                String pattern = '([a-zA-Z])';
                                RegExp regExp = RegExp(pattern);
                                if (!regExp.hasMatch(name)) {
                                  return 'invalid name';
                                }
                                return '';
                              }
                            }),
                        SizedBox(height: displayHeight(context) * 0.03),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            suffixIcon:
                                Icon(Icons.lock, color: ColorConstant.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: ColorConstant.grey),
                          ),
                          obscureText: true,
                          validator: (value) {
                            String? validateMobile(String value) {
                              String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                              RegExp regExp = new RegExp(pattern);

                              if (value.isEmpty) {
                                return 'Please enter mobile number';
                              } else if (!regExp.hasMatch(value)) {
                                return 'Please enter valid mobile number';
                              }

                              return null;
                            }

                            if (value == null || value.isEmpty) {
                              return 'Please confirm your password';
                            }
                            if (value != _passwordController.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: displayHeight(context) * 0.03),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(color: ColorConstant.land),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/forgotpassword');
                            },
                          ),
                        ),
                        SizedBox(height: displayHeight(context) * 0.04),
                        if (state is LoginLoading)
                          Center(child: CircularProgressIndicator())
                        else
                          SizedBox(
                            width: double.infinity,
                            height: displayHeight(context) * 0.06,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ColorConstant.land,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                elevation: 5,
                              ),
                              onPressed: () {
                                final username = _phonenumberController.text;
                                final password = _passwordController.text;
                                BlocProvider.of<LoginBloc>(context).add(
                                  LoginButtonPressed(
                                    username: username,
                                    password: password,
                                  ),
                                );

                                Navigator.pushNamed(context, '/bottomnavbar');
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}













//





//
















//

























//



































//

































//





























//


// // // ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

// // import 'package:easypay/view/Auth/Login/Bloc/login_bloc.dart';
// // import 'package:easypay/view/Auth/Login/Bloc/login_event.dart';
// // import 'package:easypay/view/Auth/Login/Bloc/login_state.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';

// // class LoginScreen extends StatefulWidget {
// //   @override
// //   _LoginScreenState createState() => _LoginScreenState();
// // }

// // class _LoginScreenState extends State<LoginScreen> {
// //   final TextEditingController _usernameController = TextEditingController();
// //   final TextEditingController _passwordController = TextEditingController();
// //   late LoginBloc _loginBloc;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _loginBloc = LoginBloc();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text('Login')),
// //       body: BlocProvider(
// //         create: (context) => _loginBloc,
// //         child: BlocListener<LoginBloc, LoginState>(
// //           listener: (context, state) {
// //             if (state is LoginFailure) {
// //               ScaffoldMessenger.of(context).showSnackBar(
// //                 SnackBar(content: Text(state.error)),
// //               );
// //             } else if (state is LoginSuccess) {
// //               ScaffoldMessenger.of(context).showSnackBar(
// //                 SnackBar(content: Text('Login Successful!')),
// //               );
// //               Navigator.pushNamed(context, '/dashboard');
// //               // Navigate to another screen
// //             }
// //           },
// //           child: BlocBuilder<LoginBloc, LoginState>(
// //             builder: (context, state) {
// //               return Padding(
// //                 padding: EdgeInsets.all(16.0),
// //                 child: Form(
// //                   child: Column(
// //                     children: <Widget>[
// //                       TextFormField(
// //                         controller: _usernameController,
// //                         decoration: InputDecoration(labelText: 'Username'),
// //                       ),
// //                       TextFormField(
// //                         controller: _passwordController,
// //                         decoration: InputDecoration(labelText: 'Password'),
// //                         obscureText: true,
// //                       ),
// //                       SizedBox(height: 20),
// //                       state is LoginLoading
// //                           ? CircularProgressIndicator()
// //                           : ElevatedButton(
// //                               onPressed: () {
// //                                 _loginBloc.add(LoginButtonPressed(
// //                                   username: _usernameController.text,
// //                                   password: _passwordController.text,
// //                                 ));
// //                               },
// //                               child: Text('Login'),
// //                             ),
// //                     ],
// //                   ),
// //                 ),
// //               );
// //             },
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, duplicate_ignore, unused_element, unused_import, deprecated_member_use

// import 'package:easypay/utils/color_constants.dart';
// import 'package:easypay/view/Auth/Login/Bloc/login_bloc.dart';
// import 'package:easypay/view/Auth/Login/Bloc/login_event.dart';
// import 'package:easypay/view/Auth/Login/Bloc/login_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class LoginScreen extends StatelessWidget {
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: true,
//         backgroundColor: Colors.white,
//         // ignore: prefer_const_constructors
//         body: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 18),
//           child: BlocListener<LoginBloc, LoginState>(
//             listener: (context, state) {
//               if (state is LoginFailure) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text(state.error),
//                     backgroundColor: Colors.red,
//                   ),
//                 );
//               } else if (state is LoginSuccess) {
//                 Navigator.pushReplacementNamed(context, '/dashboard');
//               }
//             },
//             child: BlocBuilder<LoginBloc, LoginState>(
//               builder: (context, state) {
//                 return Form(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: <Widget>[
//                         Image.asset(
//                           'assets/easypayy.jpg',
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Center(
//                           child: Text(
//                             "Welcome back you've been  missed",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.normal,
//                                 fontSize: 16,
//                                 color: ColorConstant.grey),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           controller: _usernameController,
//                           decoration: InputDecoration(
//                             suffixIcon: IconButton(
//                                 icon: Icon(Icons.mail), onPressed: () => () {}),
//                             // prefixIcon: Icon(Icons.lock),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(15)),
//                             labelText: 'Phone Number',
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           controller: _passwordController,
//                           decoration: InputDecoration(
//                             suffixIcon: IconButton(
//                                 icon: Icon(Icons.lock), onPressed: () => () {}),
//                             // prefixIcon: Icon(Icons.lock),
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(15)),
//                             labelText: 'Password',
//                           ),
//                           obscureText: true,
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         InkWell(
//                           child: Text(
//                             'Forgot the Password?',
//                             style: TextStyle(color: ColorConstant.land),
//                           ),
//                           onTap: () {
//                             Navigator.pushNamed(context, '/forgotpassword');
//                           },
//                         ),
//                         SizedBox(height: 20),
//                         if (state is LoginLoading)
//                           CircularProgressIndicator()
//                         else
//                           SizedBox(
//                             width: 330,
//                             height: 45,
//                             child: ElevatedButton(
//                               style: ButtonStyle(
//                                 backgroundColor: MaterialStateProperty.all(
//                                     ColorConstant.land),
//                               ),
//                               onPressed: () {
//                                 // final username = _usernameController.text;
//                                 // final password = _passwordController.text;
//                                 // BlocProvider.of<LoginBloc>(context).add(
//                                 //   LoginButtonPressed(
//                                 //     username: username,
//                                 //     password: password,
//                                 //   ),
//                                 // );
//                                 Navigator.pushNamed(context, '/bottomnavbar');
//                               },
//                               child: Text(
//                                 'Login',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ),
//                           ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Future<void> _saveAuthTokenToSharedPreferences(String token) async {
// //   SharedPreferences prefs = await SharedPreferences.getInstance();
// //   prefs.setString('access_token', token);
// // }

