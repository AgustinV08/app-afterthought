import 'package:afterthought/app/auth/components/email_field/email_field.dart';
import 'package:afterthought/app/auth/components/password_field/password_field.dart';
import 'package:afterthought/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget
{
  const RegisterForm({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm>
{
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose()
  {
    _emailController.dispose();
    _passwordController.dispose();

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
          Text('Password',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          PasswordField(
            controller: _passwordController,
          ),
        ],
      ),
    );
  }
}
