import 'package:afterthought/app/auth/components/email_field/email_field.dart';
import 'package:afterthought/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ForgotPasswordForm extends StatefulWidget
{
  const ForgotPasswordForm({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => ForgotPasswordFormState();
}

class ForgotPasswordFormState extends State<ForgotPasswordForm>
{
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose()
  {
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return Form(
      child: Column(
        crossAxisAlignment: .stretch,
        spacing: AppTheme.instance.separation,
        children: [
          Text('Email',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          EmailField(
            controller:_emailController,
            useIcon: false,
          ),
        ],
      ),
    );
  }
}
