import 'package:afterthought/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatelessWidget
{
  const RegisterBody({
    super.key,
  });

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
          child: Text('Sign Up',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        ElevatedButton(
          onPressed: ()
          {

          },
          child: const Text('Continue'),
        ),
      ],
    );
  }
}
