import 'package:afterthought/app/app_theme.dart';
import 'package:afterthought/app/auth/views/login/components/login_form.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget
{
  const LoginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: .stretch,
      spacing: AppTheme.instance.separation,
      children: [
        const SizedBox(
          height: 100,
        ),
        Center(
          child: Text('Sign in',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const LoginForm(),
        ElevatedButton(
          onPressed: ()
          {

          },
          child: const Text('Continue'),
        )
      ],
    );
  }
}
