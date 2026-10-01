import 'package:flutter/material.dart';
import 'package:afterthought/app/theme/app_form_theme.dart';
import 'package:flutter/services.dart';


class PasswordField extends StatefulWidget
{
  const PasswordField({
    super.key,
    required this.controller,
    this.useIcon = AppFormTheme.useIcon,
    this.useHint = AppFormTheme.useHint,
  });

  final TextEditingController controller;
  final bool useIcon;
  final bool useHint;

  @override
  State<StatefulWidget> createState() => PasswordFieldState();
}

class PasswordFieldState extends State<PasswordField>
{
  bool _obscureText = true;

  void _togglePassword()
  {
    setState(()
    {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return SensitiveContent(
      sensitivity: ContentSensitivity.sensitive,
      child: TextFormField(
        controller: widget.controller,
        obscureText: _obscureText,
        decoration: InputDecoration(
          labelText: !widget.useHint ? 'Enter your password': null,
          hintText: widget.useHint ? 'Enter your password': null,
          suffixIcon: IconButton(
            onPressed: _togglePassword,
            icon: const Icon(Icons.visibility_outlined),
          ),
        ),
      ),
    );
  }
}
