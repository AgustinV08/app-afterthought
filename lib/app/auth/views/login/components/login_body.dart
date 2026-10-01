import 'package:afterthought/app/auth/views/forgot_password/forgot_password.dart';
import 'package:afterthought/app/auth/views/register/register.dart';
import 'package:afterthought/app/theme/app_theme.dart';
import 'package:afterthought/app/auth/views/login/components/login_form.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget
{
  const LoginBody({
    super.key,
  });

  void _signIn(BuildContext context)
  {

  }

  void _signUp(BuildContext context)
  {
    Navigator.pushNamed(context, RegisterPage.route);
  }

  void _forgotPassword(BuildContext context)
  {
    Navigator.pushNamed(context, ForgotPasswordPage.route);
  }

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
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            TextButton(
              onPressed: ()
              {
                _signUp(context);
              },
              child: const Text('Sign Up'),
            ),
            TextButton(
              onPressed: ()
              {
                _forgotPassword(context);
              },
              child: const Text('Forgot Password?'),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: ()
          {
            _signIn(context);
          },
          child: const Text('Continue'),
        ),
      ],
    );
  }
}
