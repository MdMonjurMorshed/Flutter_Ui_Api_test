import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/product_show.dart';

class HomePageController extends GetxController {
  List<String> imgList = [
    'assets/slider.png',
    'assets/slider.png',
    'assets/slider.png',
  ];

  List<String> logo = [
    'assets/market_logo.png',
    'assets/fruits_logo.png',
    'assets/vegetables_logo.png',
    'assets/fish_logo.png',
  ];

  List<String> title = ['All', ' Fruits', 'Vegetables', 'Fish'];

  List<Product> product = [
    Product(
        title: 'Fruites and Vegetables',
        image: 'assets/fruits_veg.png',
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
        icon: Icons.arrow_forward_ios),
    Product(
        title: 'Grocery Product',
        image: 'assets/grocery_mixed.png',
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
        icon: Icons.arrow_forward_ios),
    Product(
        title: 'Toilatries Product',
        image: 'assets/toilatries.png',
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
        icon: Icons.arrow_forward_ios),
    Product(
        title: 'Footwear Product',
        image: 'assets/footwear.png',
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
        icon: Icons.arrow_forward_ios),
  ];
}
