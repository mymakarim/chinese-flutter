import 'package:chinese/utils/constant.dart';
import 'package:flutter/services.dart';

class UIHelper {
  static get systemUiOverlayStyle {
    return const SystemUiOverlayStyle(
      systemNavigationBarColor: Constant.mytheme, // navigation bar color
      systemNavigationBarIconBrightness: Brightness.light, //navigation bar icons' color
      statusBarColor: Constant.mytheme,
      statusBarIconBrightness: Brightness.light,
    );
  }
}
