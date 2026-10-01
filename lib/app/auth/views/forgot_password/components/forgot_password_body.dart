import 'package:afterthought/app/auth/views/forgot_password/components/forgot_password_form.dart';
import 'package:afterthought/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ForgotPasswordBody extends StatelessWidget
{
  const ForgotPasswordBody({
    super.key,
  });

  void _forgotPassword(BuildContext context)
  {

  }

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: .stretch,
      spacing: AppTheme.instance.separation,
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: BackButton(),
        ),
        const SizedBox(
          height: 100,
        ),
        Center(
          child: Text('Forgot Password?',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const ForgotPasswordForm(),
        ElevatedButton(
          onPressed: ()
          {
            _forgotPassword(context);
          },
          child: const Text('Continue'),
        ),
      ],
    );
  }
}
