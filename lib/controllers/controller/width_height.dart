import 'package:get/get.dart';

class ScreenWidthHeight extends GetxController {
  final RxDouble _width = 0.0.obs;
  final RxDouble _height = 0.0.obs;

  RxDouble getWidth() => _width;
  RxDouble getHeight() => _height;

  setWidth(double width) {
    _width.value = width;
  }

  setHeight(double height) {
    _height.value = height;
  }
}
