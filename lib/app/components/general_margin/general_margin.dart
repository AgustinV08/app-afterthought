import 'package:afterthought/app/app_theme.dart';
import 'package:flutter/material.dart';

class GeneralMargin extends StatelessWidget
{
  const GeneralMargin({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: .all(AppTheme.instance.separation),
      child: child,
    );
  }
}
