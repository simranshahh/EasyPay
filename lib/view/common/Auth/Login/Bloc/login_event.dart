// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginButtonPressed extends LoginEvent {
  final String username;
  final String password;
  final String role;

  LoginButtonPressed(
      {required this.username, required this.password, required this.role});

  @override
  List<Object> get props => [username, password, role];
}
