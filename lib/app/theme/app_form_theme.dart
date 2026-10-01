import 'package:afterthought/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppFormTheme
{
  const AppFormTheme._internal();

  static const AppFormTheme instance = AppFormTheme._internal();

  static const bool useHint = true;
  static const bool useIcon = true;

  InputDecorationThemeData get inputDecoration => InputDecorationThemeData(
    border: OutlineInputBorder(
      borderRadius: .circular(AppTheme.instance.radius,),
      borderSide: BorderSide(
        color: AppTheme.instance.mainColor,
      ),
    ),
    contentPadding: const .all(20),
    hintStyle: TextStyle(
      fontSize: 16,
      fontWeight: .normal,
      fontFamily: 'Switzer',
      color: const Color(0xFF2D3142).withValues(alpha: 0.3),
    ),
  );
}
