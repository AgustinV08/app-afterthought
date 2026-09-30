import 'package:afterthought/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppButtonTheme
{
  const AppButtonTheme._internal();

  static const AppButtonTheme instance = AppButtonTheme._internal();

  ElevatedButtonThemeData get elevatedButtonThemeData => ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: const WidgetStatePropertyAll(Color(0xFFD8D4C8)),
      backgroundColor: WidgetStatePropertyAll(AppTheme.instance.mainColor),
      padding: WidgetStatePropertyAll(.all(AppTheme.instance.separation)),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
        borderRadius: .all(.circular(AppTheme.instance.radius)),
      )),
      textStyle: const WidgetStatePropertyAll(TextStyle(
        fontSize: 16,
        fontFamily: 'Switzer',
        fontWeight: .w500,
      )),
    ),
  );

  TextButtonThemeData get textButtonThemeDatas => TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(AppTheme.instance.mainColor),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
        borderRadius: .all(.circular(AppTheme.instance.radius)),
      )),
      textStyle: WidgetStatePropertyAll(TextStyle(
        fontSize: 16,
        fontFamily: 'Switzer',
        fontWeight: .w500,
        decoration: .underline,
        decorationColor: AppTheme.instance.mainColor,
      )),
    ),
  );
}
