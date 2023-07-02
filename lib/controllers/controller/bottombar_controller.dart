import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_application/views/bottom_bar_page/account_page.dart';
import 'package:test_application/views/bottom_bar_page/cart_page.dart';
import 'package:test_application/views/bottom_bar_page/favorite_page.dart';
import 'package:test_application/views/bottom_bar_page/home_page.dart';

import '../../models/bottom_navbar_item.dart';

class BottomBarController extends GetxController {
  RxInt bottomCurrentIndex = 0.obs;
  final homeKey = GlobalKey<NavigatorState>();

  void changeBottomIndex(int index) {
    bottomCurrentIndex.value = index;
  }
}
