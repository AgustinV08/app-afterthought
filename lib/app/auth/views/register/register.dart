import 'package:afterthought/app/auth/views/register/components/register_body.dart';
import 'package:afterthought/app/components/general_margin/general_margin.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget
{
  static const String route = '/register';
  const RegisterPage({
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
            child: RegisterBody(),
          ),
        ),
      ),
    );
  }
}
