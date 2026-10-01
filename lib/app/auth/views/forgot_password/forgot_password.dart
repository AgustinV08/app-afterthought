import 'package:afterthought/app/auth/views/forgot_password/components/forgot_password_body.dart';
import 'package:afterthought/app/components/general_margin/general_margin.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget
{
  static const String route = '/forgot_password';
  const ForgotPasswordPage({
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
            child: ForgotPasswordBody(),
          ),
        ),
      ),
    );
  }
}
