import 'package:afterthought/app/theme/app_button_theme.dart';
import 'package:flutter/material.dart';

class AppTheme
{
  const AppTheme._internal();

  static const AppTheme instance = AppTheme._internal();

  final Color scaffoldColor = const Color(0xFFD8D4C8);
  final Color mainColor = const Color(0xFF2D3142);

  final double separation = 20;
  final double radius = 10;

  ThemeData get theme => ThemeData(
    scaffoldBackgroundColor: scaffoldColor,
    colorScheme: .fromSeed(
      seedColor: mainColor,
    ),
    elevatedButtonTheme: AppButtonTheme.instance.elevatedButtonThemeData,
    textButtonTheme: AppButtonTheme.instance.textButtonThemeDatas,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontFamily: 'Gambarino',
        fontWeight: .normal,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontFamily: 'Switzer',
        fontWeight: .normal,
      ),
    ),
    inputDecorationTheme: InputDecorationThemeData(
      border: OutlineInputBorder(
        borderRadius: .circular(radius,),
        borderSide: BorderSide(
          color: mainColor,
        ),
      ),
      contentPadding: const .all(20),
      hintStyle: TextStyle(
        fontSize: 16,
        fontWeight: .normal,
        fontFamily: 'Switzer',
        color: const Color(0xFF2D3142).withValues(alpha: 0.3),
      ),
    ),
  );
}
