import 'package:flutter/material.dart';
import 'package:afterthought/app/theme/app_form_theme.dart';
import 'package:flutter/services.dart';

class EmailField extends StatefulWidget
{
  const EmailField({
    super.key,
    required this.controller,
    this.useIcon = AppFormTheme.useIcon,
    this.useHint = AppFormTheme.useHint,
  });

  final TextEditingController controller;
  final bool useIcon;
  final bool useHint;

  @override
  State<StatefulWidget> createState() => EmailFieldState();
}

class EmailFieldState extends State<EmailField>
{
  @override
  Widget build(BuildContext context)
  {
    return SensitiveContent(
      sensitivity: ContentSensitivity.sensitive,
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: !widget.useHint ? 'Enter your email': null,
          hintText: widget.useHint ? 'Enter your email': null,
          suffixIcon: widget.useIcon ? const Icon(Icons.email_outlined): null,
        ),
      ),
    );
  }
}
