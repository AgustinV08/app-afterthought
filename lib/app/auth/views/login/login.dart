import 'package:afterthought/app/auth/views/login/components/login_body.dart';
import 'package:afterthought/app/components/general_margin/general_margin.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget
{
  static const String route = '/login';
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: GeneralMargin(
            child: LoginBody(),
          ),
        ),
      ),
    );
  }
}
