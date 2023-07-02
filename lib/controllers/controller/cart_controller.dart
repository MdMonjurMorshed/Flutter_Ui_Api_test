import 'package:get/get.dart';
import 'package:test_application/models/cart_item.dart';

class CartController extends GetxController {
  RxList<CartItem> cartItems = <CartItem>[].obs;
  bool addCart = true;
  RxInt count = 0.obs;
}
