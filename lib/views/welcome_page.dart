import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_application/controllers/controller/welcome_controller.dart';
import 'package:test_application/themes/theme.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  final welcomeController = Get.find<WelcomeScreenController>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Center(
      child: Stack(children: [
        Obx(() => IndexedStack(
              index: welcomeController.currentIndex.value,
              children: welcomeController.widgetList,
            )),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: SizedBox(
            height: height / 10,
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width / 10),
                  child: GestureDetector(
                      onTap: () {
                        Get.offNamed('/maintain');
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            color: Colors.blueGrey, fontSize: width / 16),
                      )),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: width / 10),
                    child: Obx(() => DotsIndicator(
                          dotsCount: welcomeController.widgetList.length,
                          position: welcomeController.currentIndex.value,
                          decorator: DotsDecorator(
                              size: Size(20, 20),
                              activeColor: Apptheme.appColor.splashBackColor,
                              activeSize: Size(40, 20),
                              activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onTap: welcomeController.changeIndex,
                        )))
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
