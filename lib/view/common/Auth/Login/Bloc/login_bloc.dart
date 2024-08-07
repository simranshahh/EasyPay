// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors

import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  void _onLoginButtonPressed(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());

    try {
      final encodedUsername =
          'Basic ' + base64Encode(utf8.encode(event.username));
      final encodedPassword =
          'Basic ' + base64Encode(utf8.encode(event.password));
      String role = 'role';

      final response = await http.post(
        Uri.parse('http://192.168.18.43:8000/api/login/'),
        // headers: {
        //   'Content-Type': 'application/json',
        // },
        body: jsonEncode({
          'username': encodedUsername,
          'password': encodedPassword,
          'role': role,
        }),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final accessToken = responseData['data']['access_token'];

        // Store access token using shared_preferences
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('access_token', accessToken);

        emit(LoginSuccess(token: accessToken));
      } else {
        emit(LoginFailure(error: 'Invalid credentials'));
      }
    } catch (error) {
      emit(LoginFailure(error: error.toString()));
    }
  }
}
