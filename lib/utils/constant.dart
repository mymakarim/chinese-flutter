import 'package:flutter/material.dart';

class Constant {
  static const MaterialColor mytheme = MaterialColor(_mythemePrimaryValue, <int, Color>{
    50: Color(0xFFDD4E46),
    100: Color(0xFFB62921),
    200: Color(0xFF861E18),
    300: Color(0xFF4A110D),
    400: Color(0xFF300B09),
    500: Color(_mythemePrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  });
  static const int _mythemePrimaryValue = 0xFF160504;

  static const MaterialColor mythemeAccent = MaterialColor(_mythemeAccentValue, <int, Color>{
    100: Color(0xFFFE271B),
    200: Color(_mythemeAccentValue),
    400: Color(0xFF470A06),
    700: Color(0xFF2D0907),
  });
  static const int _mythemeAccentValue = 0xFFB20B01;
}
