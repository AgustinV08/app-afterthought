import 'package:afterthought/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget
{
  const LoginForm({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm>
{
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
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
          ),
          Text('Password',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your password',
            ),
          ),
        ],
      ),
    );
  }
}
