import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test_application/controllers/controller/product_controller.dart';
import 'package:test_application/controllers/controller/width_height.dart';
import 'package:test_application/themes/theme.dart';
import 'package:test_application/views/welcome_page.dart';
import 'package:test_application/views/welcomes/delevery.dart';
import 'package:test_application/views/welcomes/grocery.dart';
import 'package:test_application/views/welcomes/welcome.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  final heightWidthController = Get.find<ScreenWidthHeight>();
  final productController = Get.find<ProductController>();
  @override
  void initState() {
    super.initState();
    spalashFunction();

    // will use a delay. after the delay will move to the another page
  }

  void spalashFunction() async {
    await Future.delayed(Duration(seconds: 3));
    // page will redirect to welcome page after splash screen
    Get.offNamed('/welcome');
    productController.getRepositoryData();
  }

  @override
  Widget build(BuildContext context) {
    heightWidthController.setHeight(MediaQuery.of(context).size.height);
    heightWidthController.setWidth(MediaQuery.of(context).size.width);

    return Scaffold(
      backgroundColor: Apptheme.appColor.splashBackColor,
      body: Center(
        child: Image.asset('assets/splash_logo.png'),
      ),
    );
  }
}
