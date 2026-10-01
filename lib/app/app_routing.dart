import 'package:afterthought/app/auth/views/forgot_password/forgot_password.dart';
import 'package:afterthought/app/auth/views/login/login.dart';
import 'package:afterthought/app/auth/views/register/register.dart';
import 'package:afterthought/app/home/views/home/home.dart';
import 'package:flutter/material.dart';

class AppRouting
{
  static const String initialRoute = LoginPage.route;

  static final Map<String, Widget Function(BuildContext)> routes =
  {
    MyHomePage.route: (_) => const MyHomePage(title: 'Flutter Demo Home Page'),
    LoginPage.route: (_) => const LoginPage(),
    RegisterPage.route: (_) => const RegisterPage(),
    ForgotPasswordPage.route: (_) => const ForgotPasswordPage(),
  };
}
