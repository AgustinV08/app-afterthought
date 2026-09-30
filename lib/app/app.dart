import 'package:afterthought/app/app_routing.dart';
import 'package:afterthought/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget
{
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.instance.theme,
      initialRoute: AppRouting.initialRoute,
      routes: AppRouting.routes,
    );
  }
}
