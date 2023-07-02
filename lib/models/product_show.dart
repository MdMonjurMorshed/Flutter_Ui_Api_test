import 'package:flutter/material.dart';

class Product {
  String title;
  String image;
  String description;
  final IconData icon;

  Product(
      {required this.title,
      required this.image,
      required this.description,
      required this.icon});
}
