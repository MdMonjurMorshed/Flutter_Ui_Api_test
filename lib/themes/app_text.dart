import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test_application/controllers/controller/width_height.dart';

class AppText {
// logo text style in homepage
  final underLogo = TextStyle(fontSize: 15, color: Colors.blueGrey);
// Producct api textstyle
// Api product old price
  final apiProductOldPrice = TextStyle(
      decoration: TextDecoration.lineThrough,
      decorationColor: Colors.red,
      decorationThickness: 3,
      fontSize: 15,
      color: Colors.blueGrey);
  final apiProductPrice = TextStyle(color: Color(0Xff019102), fontSize: 20);

// product name style
  final apiProductName = TextStyle(fontSize: 20, color: Colors.blueGrey);

  AppText();
}
