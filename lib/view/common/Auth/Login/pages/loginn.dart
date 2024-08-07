// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, duplicate_ignore, unused_element, unused_import, deprecated_member_use, must_be_immutable

import 'package:easypay/utils/color_constants.dart';
import 'package:easypay/utils/form_text_constants.dart';
import 'package:easypay/utils/size_config.dart';
import 'package:easypay/view/common/Auth/Login/Bloc/login_bloc.dart';
import 'package:easypay/view/common/Auth/Login/Bloc/login_event.dart';
import 'package:easypay/view/common/Auth/Login/Bloc/login_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final List<String> _roles = ['Superuser', 'Employee', 'Member'];
  String? _selectedRole;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorConstant.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20),
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
                if (_selectedRole == 'Superuser') {
                  Navigator.pushReplacementNamed(context, '/bottomnavbar');
                } else if (_selectedRole == 'Employee') {
                  Navigator.pushReplacementNamed(context, '/bottomnavbar');
                } else {
                  Navigator.pushReplacementNamed(context, '/bottomnavbar');
                }
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
                          height: displayHeight(context) * 0.1,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 30),
                        Center(
                          child: Text(
                            welcometitle,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: ColorConstant.grey,
                            ),
                          ),
                        ),
                        SizedBox(height: displayHeight(context) * 0.05),
                        TextFormField(
                          controller: _phonenumberController,
                          decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.phone, color: ColorConstant.primary),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(color: ColorConstant.grey),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: ColorConstant.primary),
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return kPhoneNumberNullError;
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: displayHeight(context) * 0.02),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.lock, color: ColorConstant.primary),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: ColorConstant.grey),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: ColorConstant.primary),
                            ),
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return kPassNullError;
                            }
                            if (value != _passwordController.text) {
                              return kMatchPassError;
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: displayHeight(context) * 0.02),
                        _buildRoleDropdown(),
                        SizedBox(height: displayHeight(context) * 0.02),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: ColorConstant.primary,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/forgotpassword');
                            },
                          ),
                        ),
                        SizedBox(height: displayHeight(context) * 0.03),
                        if (state is LoginLoading)
                          Center(child: CircularProgressIndicator())
                        else
                          SizedBox(
                            width: double.infinity,
                            height: displayHeight(context) * 0.07,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ColorConstant.primary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                elevation: 5,
                              ),
                              onPressed: () {
                                // final username = _phonenumberController.text;
                                // final password = _passwordController.text;
                                // final role = _selectedRole ?? '';

                                // BlocProvider.of<LoginBloc>(context).add(
                                //   LoginButtonPressed(
                                //     username: username,
                                //     password: password,
                                //     role: role,
                                //   ),
                                // );
                                Navigator.pushReplacementNamed(
                                    context, '/bottomnavbar');
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
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

  Widget _buildRoleDropdown() {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: 'Role',
        labelStyle: TextStyle(color: ColorConstant.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      ),
      value: _selectedRole,
      items: _roles.map((String role) {
        return DropdownMenuItem<String>(
          value: role,
          child: Text(role),
        );
      }).toList(),
      onChanged: (value) {
        _selectedRole = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select a role';
        }
        return null;
      },
    );
  }
}
