import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_application/views/welcomes/delevery.dart';
import 'package:test_application/views/welcomes/grocery.dart';
import 'package:test_application/views/welcomes/welcome.dart';

class WelcomeScreenController extends GetxController {
  RxInt currentIndex = 0.obs;

  List<Widget> widgetList = [Welcome(), Delevery(), Grocery()];

  void changeIndex(int index) async {
    currentIndex.value = index;
    if (index == widgetList.length - 1) {
      await Future.delayed(Duration(seconds: 2));
      Get.offNamed('/maintain');
    }
  }
}
