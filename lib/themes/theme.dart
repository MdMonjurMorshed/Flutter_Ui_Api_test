import 'package:flutter/material.dart';
import 'package:test_application/themes/app_color.dart';
import 'package:test_application/themes/app_text.dart';

class Apptheme {
  static final appText = AppText();
  static final appColor = AppColor();
  Apptheme._();

  static ThemeData defines() {
    return ThemeData(
      primaryColor: Colors.blue,
      appBarTheme: AppBarTheme(color: appColor.splashBackColor),
    );
  }
}
