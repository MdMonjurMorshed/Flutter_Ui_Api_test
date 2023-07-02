import 'package:get/get.dart';
import 'package:test_application/controllers/controller/bottombar_controller.dart';
import 'package:test_application/controllers/controller/cart_controller.dart';
import 'package:test_application/controllers/controller/home_page_controller.dart';
import 'package:test_application/controllers/controller/product_controller.dart';
import 'package:test_application/controllers/controller/welcome_controller.dart';
import 'package:test_application/controllers/controller/width_height.dart';

class ProjectBindings extends Bindings {
  @override
  void dependencies() {
    // registation of controllers
    Get.put(ScreenWidthHeight());
    Get.put(WelcomeScreenController());
    Get.put(HomePageController());
    Get.put(BottomBarController());
    Get.put(ProductController());
    Get.put(CartController());
  }
}
