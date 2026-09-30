import 'package:afterthought/app/home/views/home.dart';
import 'package:flutter/material.dart';

class AppRouting
{
  static const initialRoute = MyHomePage.route;

  static final Map<String, Widget Function(BuildContext)> routes =
  {
    MyHomePage.route:
    (_) => const MyHomePage(title: 'Flutter Demo Home Page'),
  };
}
